// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectVpcConfig {
  /// Security group IDs to assign to running builds.
  final pulumi.Input<List<String>> securityGroupIds;
  /// Subnet IDs within which to run builds.
  final pulumi.Input<List<String>> subnets;
  /// ID of the VPC within which to run builds.
  final pulumi.Input<String> vpcId;

  /// Creates a new [ProjectVpcConfig].
  /// [securityGroupIds] Security group IDs to assign to running builds.
  /// [subnets] Subnet IDs within which to run builds.
  /// [vpcId] ID of the VPC within which to run builds.
  const ProjectVpcConfig({
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

  factory ProjectVpcConfig.fromMap(Map<String, dynamic> map) {
    return ProjectVpcConfig(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

