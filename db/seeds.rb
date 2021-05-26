# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Flat.destroy_all

10.times do |_|
  Flat.create!(
    name: Faker::Name.name,
    address: Faker::Address.full_address,
    description: Faker::TvShows::GameOfThrones.quote,
    price_per_night: (50..600).to_a.sample,
    number_of_guests: (1..10).to_a.sample
  )
end

puts "Finished!"
