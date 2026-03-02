// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AwsVpcConfiguration
class AwsVpcConfiguration {
  /// Whether the task's elastic network interface receives a public IP address. The default value is ``DISABLED``.
  final pulumi.Input<String>? assignPublicIp;
  /// The IDs of the security groups associated with the task or service. If you don't specify a security group, the default security group for the VPC is used. There's a limit of 5 security groups that can be specified per ``AwsVpcConfiguration``.  All specified security groups must be from the same VPC.
  final pulumi.Input<List<String>>? securityGroups;
  /// The IDs of the subnets associated with the task or service. There's a limit of 16 subnets that can be specified per ``AwsVpcConfiguration``.  All specified subnets must be from the same VPC.
  final pulumi.Input<List<String>>? subnets;

  /// Creates a new [AwsVpcConfiguration].
  /// [assignPublicIp] Whether the task's elastic network interface receives a public IP address. The default value is ``DISABLED``.
  /// [securityGroups] The IDs of the security groups associated with the task or service. If you don't specify a security group, the default security group for the VPC is used. There's a limit of 5 security groups that can be specified per ``AwsVpcConfiguration``.  All specified security groups must be from the same VPC.
  /// [subnets] The IDs of the subnets associated with the task or service. There's a limit of 16 subnets that can be specified per ``AwsVpcConfiguration``.  All specified subnets must be from the same VPC.
  AwsVpcConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignPublicIp': ?assignPublicIp,
      'securityGroups': ?securityGroups,
      'subnets': ?subnets,
    };
  }

  factory AwsVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return AwsVpcConfiguration(
      assignPublicIp: map['assignPublicIp'] == null ? null : (map['assignPublicIp'] as String).input(),
      securityGroups: map['securityGroups'] == null ? null : ((map['securityGroups'] as List).cast<String>()).input(),
      subnets: map['subnets'] == null ? null : ((map['subnets'] as List).cast<String>()).input(),
    );
  }
}

