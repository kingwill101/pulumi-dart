// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityProviderVpcConfig {
  /// List of security group IDs for the VPC.
  final pulumi.Input<List<String>> securityGroupIds;
  /// List of subnet IDs for the VPC.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [CapacityProviderVpcConfig].
  /// [securityGroupIds] List of security group IDs for the VPC.
  /// [subnetIds] List of subnet IDs for the VPC.
  const CapacityProviderVpcConfig({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory CapacityProviderVpcConfig.fromMap(Map<String, dynamic> map) {
    return CapacityProviderVpcConfig(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}

