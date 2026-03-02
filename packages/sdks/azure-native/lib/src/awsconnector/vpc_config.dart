// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VpcConfig
class VpcConfig {
  /// Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.
  final pulumi.Input<bool>? ipv6AllowedForDualStack;
  /// A list of VPC security group IDs.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// A list of VPC subnet IDs.
  final pulumi.Input<List<String>>? subnetIds;
  /// <p>A list of one or more subnet IDs in your Amazon VPC.</p>
  final pulumi.Input<List<String>>? subnets;
  /// <p>The ID of the Amazon VPC.</p>
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcConfig].
  /// [ipv6AllowedForDualStack] Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.
  /// [securityGroupIds] A list of VPC security group IDs.
  /// [subnetIds] A list of VPC subnet IDs.
  /// [subnets] <p>A list of one or more subnet IDs in your Amazon VPC.</p>
  /// [vpcId] <p>The ID of the Amazon VPC.</p>
  VpcConfig({
    this.ipv6AllowedForDualStack,
    this.securityGroupIds,
    this.subnetIds,
    this.subnets,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6AllowedForDualStack': ?ipv6AllowedForDualStack,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'subnets': ?subnets,
      'vpcId': ?vpcId,
    };
  }

  factory VpcConfig.fromMap(Map<String, dynamic> map) {
    return VpcConfig(
      ipv6AllowedForDualStack: map['ipv6AllowedForDualStack'] == null ? null : (map['ipv6AllowedForDualStack']! as bool).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds']! as List).cast<String>()).input(),
      subnetIds: map['subnetIds'] == null ? null : ((map['subnetIds']! as List).cast<String>()).input(),
      subnets: map['subnets'] == null ? null : ((map['subnets']! as List).cast<String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

