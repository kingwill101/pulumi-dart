// ignore_for_file: unused_element, unnecessary_cast

class TaskSetNetworkConfiguration {
  /// Whether to assign a public IP address to the ENI (`FARGATE` launch type only). Valid values are <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  ///
  /// For more information, see [Task Networking](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task-networking.html).
  final bool? assignPublicIp;

  /// The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used. Maximum of 5.
  final List<String>? securityGroups;

  /// The subnets associated with the task or service. Maximum of 16.
  final List<String> subnets;

  TaskSetNetworkConfiguration({
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

  factory TaskSetNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return TaskSetNetworkConfiguration(
      assignPublicIp:
          map['assignPublicIp'] == null ? null : map['assignPublicIp'] as bool,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
