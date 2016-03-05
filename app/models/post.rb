class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	acts_as_votable
	validates :title, :presence => true, :uniqueness => true, :length => { :maximum => 40 }
	validates :url, :uniqueness => true
	validates_format_of :url, :with => URI::regexp(%w(http https))
	validates :description, :presence => true, :uniqueness => true, :length => { :maximum => 2000 }

end
