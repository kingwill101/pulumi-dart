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

  /// Creates a new [TopicRuleDestinationVpcConfiguration].
  /// [roleArn] The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).
  /// [securityGroups] The security groups of the VPC destination.
  /// [subnetIds] The subnet IDs of the VPC destination.
  /// [vpcId] The ID of the VPC.
  TopicRuleDestinationVpcConfiguration({
    required this.roleArn,
    this.securityGroups,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'securityGroups': ?securityGroups,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory TopicRuleDestinationVpcConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
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
