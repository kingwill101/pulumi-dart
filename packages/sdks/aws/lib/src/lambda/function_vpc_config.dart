// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionVpcConfig {
  /// Whether to allow outbound IPv6 traffic on VPC functions connected to dual-stack subnets. Default: `false`.
  final pulumi.Input<bool>? ipv6AllowedForDualStack;
  /// List of security group IDs associated with the Lambda function.
  final pulumi.Input<List<String>> securityGroupIds;
  /// List of subnet IDs associated with the Lambda function.
  final pulumi.Input<List<String>> subnetIds;
  /// ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [FunctionVpcConfig].
  /// [ipv6AllowedForDualStack] Whether to allow outbound IPv6 traffic on VPC functions connected to dual-stack subnets. Default: `false`.
  /// [securityGroupIds] List of security group IDs associated with the Lambda function.
  /// [subnetIds] List of subnet IDs associated with the Lambda function.
  /// [vpcId] ID of the VPC.
  FunctionVpcConfig({
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
      ipv6AllowedForDualStack: map['ipv6AllowedForDualStack'] == null ? null : ((map['ipv6AllowedForDualStack'] as bool).input()).input(),
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}

