// ignore_for_file: unused_element, unnecessary_cast

import 'aws_vpc_configuration.dart';

/// Definition of NetworkConfiguration
class NetworkConfiguration {
  /// The VPC subnets and security groups that are associated with a task.  All specified subnets and security groups must be from the same VPC. An object representing the networking details for a task or service. For example ``awsvpcConfiguration={subnets=['subnet-12344321'],securityGroups=['sg-12344321']}``
  final AwsVpcConfiguration? awsvpcConfiguration;

  /// Creates a new [NetworkConfiguration].
  /// [awsvpcConfiguration] The VPC subnets and security groups that are associated with a task.  All specified subnets and security groups must be from the same VPC. An object representing the networking details for a task or service. For example ``awsvpcConfiguration={subnets=['subnet-12344321'],securityGroups=['sg-12344321']}``
  NetworkConfiguration({
    this.awsvpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsvpcConfiguration': ?awsvpcConfiguration == null ? null : awsvpcConfiguration!.toMap(),
    };
  }

  factory NetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConfiguration(
      awsvpcConfiguration: map['awsvpcConfiguration'] == null ? null : AwsVpcConfiguration.fromMap((map['awsvpcConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

