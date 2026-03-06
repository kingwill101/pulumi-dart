// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_vpc_configuration.dart';

/// Definition of NetworkConfiguration
class NetworkConfiguration {
  /// The VPC subnets and security groups that are associated with a task.  All specified subnets and security groups must be from the same VPC. An object representing the networking details for a task or service. For example ``awsvpcConfiguration={subnets=['subnet-12344321'],securityGroups=['sg-12344321']}``
  final pulumi.Input<AwsVpcConfiguration>? awsvpcConfiguration;

  /// Creates a new [NetworkConfiguration].
  /// [awsvpcConfiguration] The VPC subnets and security groups that are associated with a task.  All specified subnets and security groups must be from the same VPC. An object representing the networking details for a task or service. For example ``awsvpcConfiguration={subnets=['subnet-12344321'],securityGroups=['sg-12344321']}``
  const NetworkConfiguration({
    this.awsvpcConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsvpcConfiguration': ?pulumi.Input.mapOptionalInputValue<AwsVpcConfiguration, Map<String, dynamic>>(awsvpcConfiguration, (value) => value.toMap()),
    };
  }

  factory NetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConfiguration(
      awsvpcConfiguration: (() { final guardedValue = map['awsvpcConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AwsVpcConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

