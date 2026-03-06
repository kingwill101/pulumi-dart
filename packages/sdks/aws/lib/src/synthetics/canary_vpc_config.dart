// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CanaryVpcConfig {
  /// If `true`, allow outbound IPv6 traffic on VPC canaries that are connected to dual-stack subnets. The default is `false`.
  final pulumi.Input<bool>? ipv6AllowedForDualStack;
  /// IDs of the security groups for this canary.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// IDs of the subnets where this canary is to run.
  final pulumi.Input<List<String>>? subnetIds;
  /// ID of the VPC where this canary is to run.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [CanaryVpcConfig].
  /// [ipv6AllowedForDualStack] If `true`, allow outbound IPv6 traffic on VPC canaries that are connected to dual-stack subnets. The default is `false`.
  /// [securityGroupIds] IDs of the security groups for this canary.
  /// [subnetIds] IDs of the subnets where this canary is to run.
  /// [vpcId] ID of the VPC where this canary is to run.
  const CanaryVpcConfig({
    this.ipv6AllowedForDualStack,
    this.securityGroupIds,
    this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6AllowedForDualStack': ?ipv6AllowedForDualStack,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory CanaryVpcConfig.fromMap(Map<String, dynamic> map) {
    return CanaryVpcConfig(
      ipv6AllowedForDualStack: (() { final guardedValue = map['ipv6AllowedForDualStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

