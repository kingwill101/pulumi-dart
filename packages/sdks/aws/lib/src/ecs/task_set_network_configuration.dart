// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskSetNetworkConfiguration {
  /// Whether to assign a public IP address to the ENI (`FARGATE` launch type only). Valid values are `true` or `false`. Default `false`.
  ///
  /// For more information, see [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html).
  final pulumi.Input<bool>? assignPublicIp;
  /// The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used. Maximum of 5.
  final pulumi.Input<List<String>>? securityGroups;
  /// The subnets associated with the task or service. Maximum of 16.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [TaskSetNetworkConfiguration].
  /// [assignPublicIp] Whether to assign a public IP address to the ENI (`FARGATE` launch type only). Valid values are `true` or `false`. Default `false`.
  /// [securityGroups] The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used. Maximum of 5.
  /// [subnets] The subnets associated with the task or service. Maximum of 16.
  TaskSetNetworkConfiguration({
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

  factory TaskSetNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskSetNetworkConfiguration(
      assignPublicIp: map['assignPublicIp'] == null ? null : ((map['assignPublicIp'] as bool).input()).input(),
      securityGroups: map['securityGroups'] == null ? null : (((map['securityGroups'] as List).cast<String>()).input()).input(),
      subnets: ((map['subnets'] as List).cast<String>()).input(),
    );
  }
}

