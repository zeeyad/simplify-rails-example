class PaymentController < ApplicationController
  def index
  end

  def pay
    payment = Simplify::Payment.create({
        amount: '1235',
        token: params['simplifyToken'],
        description: 'Simplify Rails Example',
        currency: 'USD'})

    @message = payment['paymentStatus']

  end


  # private
  #   def payment_params
  #     params.require(:person).permit(:amount, :token, :description, :currency)
  #   end
end
