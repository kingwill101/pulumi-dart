// ignore_for_file: unused_element, unnecessary_cast

class GetTaskExecutionNetworkConfiguration {
  /// Assign a public IP address to the ENI (Fargate launch type only). Valid values are `true` or `false`. Default `false`.
  ///
  /// For more information, see the [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html) documentation.
  final bool? assignPublicIp;

  /// Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used.
  final List<String>? securityGroups;

  /// Subnets associated with the task or service.
  final List<String> subnets;

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

  factory GetTaskExecutionNetworkConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTaskExecutionNetworkConfiguration(
      assignPublicIp: map['assignPublicIp'] == null
          ? null
          : map['assignPublicIp'] as bool,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
