// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of VpcConfig
class VpcConfigLambdaFunctionResponse {
  /// Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.
  final pulumi.Input<bool?>? ipv6AllowedForDualStack;
  /// A list of VPC security group IDs.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// A list of VPC subnet IDs.
  final pulumi.Input<List<String>?>? subnetIds;

  /// Creates a new [VpcConfigLambdaFunctionResponse].
  /// [ipv6AllowedForDualStack] Allows outbound IPv6 traffic on VPC functions that are connected to dual-stack subnets.
  /// [securityGroupIds] A list of VPC security group IDs.
  /// [subnetIds] A list of VPC subnet IDs.
  const VpcConfigLambdaFunctionResponse({
    this.ipv6AllowedForDualStack,
    this.securityGroupIds,
    this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6AllowedForDualStack': ?ipv6AllowedForDualStack,
      'securityGroupIds': ?securityGroupIds,
      'subnetIds': ?subnetIds,
    };
  }

  factory VpcConfigLambdaFunctionResponse.fromMap(Map<String, dynamic> map) {
    return VpcConfigLambdaFunctionResponse(
      ipv6AllowedForDualStack: (() { final guardedValue = map['ipv6AllowedForDualStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
