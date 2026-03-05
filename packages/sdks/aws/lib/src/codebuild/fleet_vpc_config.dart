// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetVpcConfig {
  /// A list of one or more security groups IDs in your Amazon VPC.
  final pulumi.Input<List<String>> securityGroupIds;
  /// A list of one or more subnet IDs in your Amazon VPC.
  final pulumi.Input<List<String>> subnets;
  /// The ID of the Amazon VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [FleetVpcConfig].
  /// [securityGroupIds] A list of one or more security groups IDs in your Amazon VPC.
  /// [subnets] A list of one or more subnet IDs in your Amazon VPC.
  /// [vpcId] The ID of the Amazon VPC.
  FleetVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnets': subnets,
      'vpcId': vpcId,
    };
  }

  factory FleetVpcConfig.fromMap(Map<String, dynamic> map) {
    return FleetVpcConfig(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

