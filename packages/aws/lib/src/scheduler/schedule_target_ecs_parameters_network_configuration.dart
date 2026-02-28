// ignore_for_file: unused_element, unnecessary_cast


class ScheduleTargetEcsParametersNetworkConfiguration {
  /// Specifies whether the task's elastic network interface receives a public IP address. This attribute is a boolean type, where `true` maps to `ENABLED` and `false` to `DISABLED`. You can specify `true` only when the `launch_type` is set to `FARGATE`.
  final bool? assignPublicIp;
  /// Set of 1 to 5 Security Group ID-s to be associated with the task. These security groups must all be in the same VPC.
  final List<String>? securityGroups;
  /// Set of 1 to 16 subnets to be associated with the task. These subnets must all be in the same VPC.
  final List<String> subnets;

  /// Creates a new [ScheduleTargetEcsParametersNetworkConfiguration].
  /// [assignPublicIp] Specifies whether the task's elastic network interface receives a public IP address. This attribute is a boolean type, where `true` maps to `ENABLED` and `false` to `DISABLED`. You can specify `true` only when the `launch_type` is set to `FARGATE`.
  /// [securityGroups] Set of 1 to 5 Security Group ID-s to be associated with the task. These security groups must all be in the same VPC.
  /// [subnets] Set of 1 to 16 subnets to be associated with the task. These subnets must all be in the same VPC.
  ScheduleTargetEcsParametersNetworkConfiguration({
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

  factory ScheduleTargetEcsParametersNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return ScheduleTargetEcsParametersNetworkConfiguration(
      assignPublicIp: map['assignPublicIp'] == null ? null : map['assignPublicIp'] as bool,
      securityGroups: map['securityGroups'] == null ? null : (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}

