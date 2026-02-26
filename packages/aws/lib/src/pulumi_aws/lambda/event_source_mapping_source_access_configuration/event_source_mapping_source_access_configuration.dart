// ignore_for_file: unused_element, unnecessary_cast

class EventSourceMappingSourceAccessConfiguration {
  /// Type of authentication protocol, VPC components, or virtual host for your event source. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/lambda/latest/api/API_SourceAccessConfiguration.html).
  final String type;

  /// URI for this configuration. For type `VPC_SUBNET` the value should be `subnet:subnet_id` where <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span> is the value you would find in an<span pulumi-lang-nodejs=" aws.ec2.Subnet " pulumi-lang-dotnet=" aws.ec2.Subnet " pulumi-lang-go=" ec2.Subnet " pulumi-lang-python=" ec2.Subnet " pulumi-lang-yaml=" aws.ec2.Subnet " pulumi-lang-java=" aws.ec2.Subnet "> aws.ec2.Subnet </span>resource's id attribute. For type `VPC_SECURITY_GROUP` the value should be `security_group:security_group_id` where <span pulumi-lang-nodejs="`securityGroupId`" pulumi-lang-dotnet="`SecurityGroupId`" pulumi-lang-go="`securityGroupId`" pulumi-lang-python="`security_group_id`" pulumi-lang-yaml="`securityGroupId`" pulumi-lang-java="`securityGroupId`">`security_group_id`</span> is the value you would find in an<span pulumi-lang-nodejs=" aws.ec2.SecurityGroup " pulumi-lang-dotnet=" aws.ec2.SecurityGroup " pulumi-lang-go=" ec2.SecurityGroup " pulumi-lang-python=" ec2.SecurityGroup " pulumi-lang-yaml=" aws.ec2.SecurityGroup " pulumi-lang-java=" aws.ec2.SecurityGroup "> aws.ec2.SecurityGroup </span>resource's id attribute.
  final String uri;

  EventSourceMappingSourceAccessConfiguration({
    required this.type,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }

  factory EventSourceMappingSourceAccessConfiguration.fromMap(
      Map<String, dynamic> map) {
    return EventSourceMappingSourceAccessConfiguration(
      type: map['type'] as String,
      uri: map['uri'] as String,
    );
  }
}
