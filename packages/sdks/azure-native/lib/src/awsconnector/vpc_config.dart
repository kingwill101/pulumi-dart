// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VpcConfig
class VpcConfig {
  /// Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.
  final pulumi.Input<bool?>? ipv6AllowedForDualStack;
  /// A list of VPC security group IDs.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// A list of VPC subnet IDs.
  final pulumi.Input<List<String>?>? subnetIds;
  /// &lt;p&gt;A list of one or more subnet IDs in your Amazon VPC.&lt;/p&gt;
  final pulumi.Input<List<String>?>? subnets;
  /// &lt;p&gt;The ID of the Amazon VPC.&lt;/p&gt;
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [VpcConfig].
  /// [ipv6AllowedForDualStack] Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.
  /// [securityGroupIds] A list of VPC security group IDs.
  /// [subnetIds] A list of VPC subnet IDs.
  /// [subnets] &lt;p&gt;A list of one or more subnet IDs in your Amazon VPC.&lt;/p&gt;
  /// [vpcId] &lt;p&gt;The ID of the Amazon VPC.&lt;/p&gt;
  const VpcConfig({
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
      ipv6AllowedForDualStack: (() { final guardedValue = map['ipv6AllowedForDualStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
