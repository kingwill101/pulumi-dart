// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceNetworkConfiguration {
  /// Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Default `false`.
  final pulumi.Input<bool>? assignPublicIp;
  /// Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used.
  final pulumi.Input<List<String>>? securityGroups;
  /// Subnets associated with the task or service.
  ///
  /// For more information, see [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html)
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [ServiceNetworkConfiguration].
  /// [assignPublicIp] Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Default `false`.
  /// [securityGroups] Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used.
  /// [subnets] Subnets associated with the task or service.
  ServiceNetworkConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignPublicIp': ?assignPublicIp,
      'securityGroups': ?securityGroups,
      'subnets': subnets,
    };
  }

  factory ServiceNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceNetworkConfiguration(
      assignPublicIp: map['assignPublicIp'] == null ? null : ((map['assignPublicIp'] as bool).input()).input(),
      securityGroups: map['securityGroups'] == null ? null : (((map['securityGroups'] as List).cast<String>()).input()).input(),
      subnets: ((map['subnets'] as List).cast<String>()).input(),
    );
  }
}

