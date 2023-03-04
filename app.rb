require 'sinatra'
set :views, File.dirname(__FILE__) + "/views"


IMAGES = [
  {title: "Programmer", url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAZpdMyuDahkrU01rONtOS8p1ItTdJb_5Ncg&usqp=CAU"},
  {title: "Uni", url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9usp9i-pEgD9G7C-rPr14KyOvaFt0-FX40Q&usqp=CAU"}
]

get '/images' do
  @images = IMAGES
  erb :images
end

get "/images/:index" do |index|
  @image = IMAGES[index.to_i]
  erb :show_image
end

