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
  const TopicRuleDestinationVpcConfiguration({
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
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      securityGroups: (() { final guardedValue = map['securityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

