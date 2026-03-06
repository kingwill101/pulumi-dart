// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomModelVpcConfig {
  /// VPC configuration security group IDs.
  final pulumi.Input<List<String>> securityGroupIds;
  /// VPC configuration subnets.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [CustomModelVpcConfig].
  /// [securityGroupIds] VPC configuration security group IDs.
  /// [subnetIds] VPC configuration subnets.
  const CustomModelVpcConfig({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory CustomModelVpcConfig.fromMap(Map<String, dynamic> map) {
    return CustomModelVpcConfig(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}

