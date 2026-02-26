// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration {
  /// Specifies whether the task's elastic network interface receives a public IP address. You can specify ENABLED only when LaunchType in EcsParameters is set to FARGATE. Valid Values: ENABLED, DISABLED.
  final String? assignPublicIp;
  final List<String>? securityGroups;
  final List<String>? subnets;

  PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration({
    this.assignPublicIp,
    this.securityGroups,
    this.subnets,
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
    final subnetsValue = subnets;
    if (subnetsValue != null) {
      map['subnets'] = subnetsValue;
    }
    return map;
  }

  factory PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration.fromMap(
      Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersNetworkConfigurationAwsVpcConfiguration(
      assignPublicIp: map['assignPublicIp'] == null
          ? null
          : map['assignPublicIp'] as String,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnets: map['subnets'] == null
          ? null
          : (map['subnets'] as List).cast<String>(),
    );
  }
}
