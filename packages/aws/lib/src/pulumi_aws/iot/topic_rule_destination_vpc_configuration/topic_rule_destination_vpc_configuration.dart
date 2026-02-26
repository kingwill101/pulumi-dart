// ignore_for_file: unused_element, unnecessary_cast

class TopicRuleDestinationVpcConfiguration {
  /// The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).
  final String roleArn;

  /// The security groups of the VPC destination.
  final List<String>? securityGroups;

  /// The subnet IDs of the VPC destination.
  final List<String> subnetIds;

  /// The ID of the VPC.
  final String vpcId;

  TopicRuleDestinationVpcConfiguration({
    required this.roleArn,
    this.securityGroups,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['roleArn'] = roleArn;
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    map['subnetIds'] = subnetIds;
    map['vpcId'] = vpcId;
    return map;
  }

  factory TopicRuleDestinationVpcConfiguration.fromMap(
      Map<String, dynamic> map) {
    return TopicRuleDestinationVpcConfiguration(
      roleArn: map['roleArn'] as String,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
