// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionVpcConfig {
  final pulumi.Input<bool> ipv6AllowedForDualStack;
  /// List of security group IDs associated with the Lambda function.
  final pulumi.Input<List<String>> securityGroupIds;
  /// List of subnet IDs associated with the Lambda function.
  final pulumi.Input<List<String>> subnetIds;
  /// ID of the VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [GetFunctionVpcConfig].
  /// [ipv6AllowedForDualStack] Required.
  /// [securityGroupIds] List of security group IDs associated with the Lambda function.
  /// [subnetIds] List of subnet IDs associated with the Lambda function.
  /// [vpcId] ID of the VPC.
  GetFunctionVpcConfig({
    required this.ipv6AllowedForDualStack,
    required this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6AllowedForDualStack': ipv6AllowedForDualStack,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory GetFunctionVpcConfig.fromMap(Map<String, dynamic> map) {
    return GetFunctionVpcConfig(
      ipv6AllowedForDualStack: pulumi.Input.fromValue(map['ipv6AllowedForDualStack'] as bool),
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

