// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTaskExecutionNetworkConfiguration {
  /// Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Default `false`.
  final pulumi.Input<bool>? assignPublicIp;
  /// Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used.
  final pulumi.Input<List<String>>? securityGroups;
  /// Subnets associated with the task or service.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [GetTaskExecutionNetworkConfiguration].
  /// [assignPublicIp] Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Default `false`.
  /// [securityGroups] Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used.
  /// [subnets] Subnets associated with the task or service.
  const GetTaskExecutionNetworkConfiguration({
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
      assignPublicIp: (() { final guardedValue = map['assignPublicIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
