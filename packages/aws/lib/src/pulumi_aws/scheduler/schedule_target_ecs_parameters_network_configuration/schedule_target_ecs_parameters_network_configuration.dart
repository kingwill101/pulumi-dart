// ignore_for_file: unused_element, unnecessary_cast

class ScheduleTargetEcsParametersNetworkConfiguration {
  /// Specifies whether the task's elastic network interface receives a public IP address. This attribute is a boolean type, where <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> maps to `ENABLED` and <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> to `DISABLED`. You can specify <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> only when the <span pulumi-lang-nodejs="`launchType`" pulumi-lang-dotnet="`LaunchType`" pulumi-lang-go="`launchType`" pulumi-lang-python="`launch_type`" pulumi-lang-yaml="`launchType`" pulumi-lang-java="`launchType`">`launch_type`</span> is set to `FARGATE`.
  final bool? assignPublicIp;

  /// Set of 1 to 5 Security Group ID-s to be associated with the task. These security groups must all be in the same VPC.
  final List<String>? securityGroups;

  /// Set of 1 to 16 subnets to be associated with the task. These subnets must all be in the same VPC.
  final List<String> subnets;

  ScheduleTargetEcsParametersNetworkConfiguration({
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

  factory ScheduleTargetEcsParametersNetworkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ScheduleTargetEcsParametersNetworkConfiguration(
      assignPublicIp:
          map['assignPublicIp'] == null ? null : map['assignPublicIp'] as bool,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnets: (map['subnets'] as List).cast<String>(),
    );
  }
}
