// ignore_for_file: unused_element, unnecessary_cast

class CanaryVpcConfig {
  /// If `true`, allow outbound IPv6 traffic on VPC canaries that are connected to dual-stack subnets. The default is `false`.
  final bool? ipv6AllowedForDualStack;

  /// IDs of the security groups for this canary.
  final List<String>? securityGroupIds;

  /// IDs of the subnets where this canary is to run.
  final List<String>? subnetIds;

  /// ID of the VPC where this canary is to run.
  final String? vpcId;

  CanaryVpcConfig({
    this.ipv6AllowedForDualStack,
    this.securityGroupIds,
    this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipv6AllowedForDualStackValue = ipv6AllowedForDualStack;
    if (ipv6AllowedForDualStackValue != null) {
      map['ipv6AllowedForDualStack'] = ipv6AllowedForDualStackValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory CanaryVpcConfig.fromMap(Map<String, dynamic> map) {
    return CanaryVpcConfig(
      ipv6AllowedForDualStack: map['ipv6AllowedForDualStack'] == null
          ? null
          : map['ipv6AllowedForDualStack'] as bool,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
