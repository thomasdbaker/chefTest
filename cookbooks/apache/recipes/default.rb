#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved
#Install apache package

if node['platform_family'] == "rhel"
	package = "httpd"
elseif node['platform_family'] == "debian"
	package = "apache2"
end

pacakage 'apache2' do
	package_name package
	action :install
end

service 'apache2' do 
	service_name package
	action [:start, :enable]
end
