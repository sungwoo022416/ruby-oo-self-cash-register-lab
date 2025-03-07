require 'pry'
class CashRegister
    attr_accessor :total, :discount, :last_transaction, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
        items << title
        end
        self.last_transaction = price * quantity
    end

    def apply_discount
        if discount != 0
        self.total = (self.total - total * discount / 100.00).round
        "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= last_transaction
    end


    
end
