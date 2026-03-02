// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopicRuleDestinationVpcConfiguration {
  /// The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).
  final pulumi.Input<String> roleArn;
  /// The security groups of the VPC destination.
  final pulumi.Input<List<String>>? securityGroups;
  /// The subnet IDs of the VPC destination.
  final pulumi.Input<List<String>> subnetIds;
  /// The ID of the VPC.
  final pulumi.Input<String> vpcId;

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

  factory TopicRuleDestinationVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return TopicRuleDestinationVpcConfiguration(
      roleArn: (map['roleArn'] as String).input(),
      securityGroups: map['securityGroups'] == null ? null : (((map['securityGroups'] as List).cast<String>()).input()).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

