class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
      self.first_name + " " + self.last_name
        
    end

    def list_roles
      show_name = self.shows.pluck(:name).join
      char_name = self.characters.pluck(:name).join
      char_name + ' - ' + show_name

    end
  
end