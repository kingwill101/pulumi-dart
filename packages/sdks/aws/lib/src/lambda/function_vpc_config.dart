// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionVpcConfig {
  /// Whether to allow outbound IPv6 traffic on VPC functions connected to dual-stack subnets. Default: `false`.
  final pulumi.Input<bool?>? ipv6AllowedForDualStack;
  /// List of security group IDs associated with the Lambda function.
  final pulumi.Input<List<String>> securityGroupIds;
  /// List of subnet IDs associated with the Lambda function.
  final pulumi.Input<List<String>> subnetIds;
  /// ID of the VPC.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [FunctionVpcConfig].
  /// [ipv6AllowedForDualStack] Whether to allow outbound IPv6 traffic on VPC functions connected to dual-stack subnets. Default: `false`.
  /// [securityGroupIds] List of security group IDs associated with the Lambda function.
  /// [subnetIds] List of subnet IDs associated with the Lambda function.
  /// [vpcId] ID of the VPC.
  const FunctionVpcConfig({
    this.ipv6AllowedForDualStack,
    required this.securityGroupIds,
    required this.subnetIds,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6AllowedForDualStack': ?ipv6AllowedForDualStack,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'vpcId': ?vpcId,
    };
  }

  factory FunctionVpcConfig.fromMap(Map<String, dynamic> map) {
    return FunctionVpcConfig(
      ipv6AllowedForDualStack: (() { final guardedValue = map['ipv6AllowedForDualStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
