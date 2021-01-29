class UsersController < ApplicationController
  def show
    @user = Prototype.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile, :occupation, :position).merge(user_id: current_user.id, prototype_id: prototype.id)
  end
end
