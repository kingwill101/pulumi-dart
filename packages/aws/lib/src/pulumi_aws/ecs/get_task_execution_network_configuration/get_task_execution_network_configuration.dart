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

  GetTaskExecutionNetworkConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assignPublicIpValue = assignPublicIp;
    if (assignPublicIpValue != null) {
      map['assignPublicIp'] = assignPublicIpValue;
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    map['subnets'] = subnets;
    return map;
  }

  factory GetTaskExecutionNetworkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetTaskExecutionNetworkConfiguration(
      assignPublicIp:
          map['assignPublicIp'] == null ? null : map['assignPublicIp'] as bool,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
