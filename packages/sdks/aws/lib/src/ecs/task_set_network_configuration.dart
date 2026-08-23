// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskSetNetworkConfiguration {
  /// Whether to assign a public IP address to the ENI (`FARGATE` launch type only). Valid values are `true` or `false`. Default `false`.
  final pulumi.Input<bool>? assignPublicIp;
  /// Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used. Maximum of 5.
  final pulumi.Input<List<String>>? securityGroups;
  /// Subnets associated with the task or service. Maximum of 16.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [TaskSetNetworkConfiguration].
  /// [assignPublicIp] Whether to assign a public IP address to the ENI (`FARGATE` launch type only). Valid values are `true` or `false`. Default `false`.
  /// [securityGroups] Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used. Maximum of 5.
  /// [subnets] Subnets associated with the task or service. Maximum of 16.
  const TaskSetNetworkConfiguration({
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
      assignPublicIp: (() { final guardedValue = map['assignPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
