require "sinatra"
require "sinatra/reloader" if development?
# require "pry-byebug"
# require "better_errors"
require "date"

set :bind, "0.0.0.0"

# configure :development do
#   use BetterErrors::Middleware
#   BetterErrors.application_root = File.expand_path(__dir__)
# end

get "/" do # <- router part
  erb :index
end

get "/index" do # <- router part
  erb :index
end

get "/about" do
  erb :about
end

get "/team/:username" do
  # binding.pry
  puts params[:username]
  "The username is #{params[:username]}"
end
