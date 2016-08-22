class ItemsController < ApplicationController

  def show
    @current_cart = current_user.current_cart if user_signed_in?
    @item = Item.find(params[:id])
  end

end
