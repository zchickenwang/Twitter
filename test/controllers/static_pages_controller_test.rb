require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup 
    @base_title = "Twitter"
  end

  #test "should get root" do
  #  get root_path
  #  assert_response :success
  #end
  
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "#{@base_title} Help"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title," "#{@base_title} Contact"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "#{@base_title} About"
  end

end
