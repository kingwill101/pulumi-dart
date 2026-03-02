// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskExecutionNetworkConfiguration {
  /// Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Default `false`.
  ///
  /// For more information, see the [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html) documentation.
  final pulumi.Input<bool>? assignPublicIp;
  /// Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used.
  final pulumi.Input<List<String>>? securityGroups;
  /// Subnets associated with the task or service.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [GetTaskExecutionNetworkConfiguration].
  /// [assignPublicIp] Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Default `false`.
  /// [securityGroups] Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used.
  /// [subnets] Subnets associated with the task or service.
  GetTaskExecutionNetworkConfiguration({
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

  factory GetTaskExecutionNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionNetworkConfiguration(
      assignPublicIp: map['assignPublicIp'] == null ? null : ((map['assignPublicIp'] as bool).input()).input(),
      securityGroups: map['securityGroups'] == null ? null : (((map['securityGroups'] as List).cast<String>()).input()).input(),
      subnets: ((map['subnets'] as List).cast<String>()).input(),
    );
  }
}

