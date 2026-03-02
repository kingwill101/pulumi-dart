// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_vpc_configuration_response.dart';

/// Definition of NetworkConfiguration
class NetworkConfigurationResponse {
  /// The VPC subnets and security groups that are associated with a task.  All specified subnets and security groups must be from the same VPC. An object representing the networking details for a task or service. For example ``awsvpcConfiguration={subnets=['subnet-12344321'],securityGroups=['sg-12344321']}``
  final pulumi.Input<AwsVpcConfigurationResponse>? awsvpcConfiguration;

  /// Creates a new [NetworkConfigurationResponse].
  /// [awsvpcConfiguration] The VPC subnets and security groups that are associated with a task.  All specified subnets and security groups must be from the same VPC. An object representing the networking details for a task or service. For example ``awsvpcConfiguration={subnets=['subnet-12344321'],securityGroups=['sg-12344321']}``
  NetworkConfigurationResponse({
    this.awsvpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsvpcConfiguration': ?pulumi.Input.mapOptionalInputValue<AwsVpcConfigurationResponse, Map<String, dynamic>>(awsvpcConfiguration, (value) => value.toMap()),
    };
  }

  factory NetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigurationResponse(
      awsvpcConfiguration: map['awsvpcConfiguration'] == null ? null : (AwsVpcConfigurationResponse.fromMap((map['awsvpcConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

