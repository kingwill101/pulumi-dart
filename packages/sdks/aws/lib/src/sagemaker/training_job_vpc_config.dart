// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrainingJobVpcConfig {
  /// List of VPC security group IDs. Maximum of 5.
  final pulumi.Input<List<String>> securityGroupIds;
  /// List of subnet IDs. Maximum of 16.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [TrainingJobVpcConfig].
  /// [securityGroupIds] List of VPC security group IDs. Maximum of 5.
  /// [subnets] List of subnet IDs. Maximum of 16.
  const TrainingJobVpcConfig({
    required this.securityGroupIds,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnets': subnets,
    };
  }

  factory TrainingJobVpcConfig.fromMap(Map<String, dynamic> map) {
    return TrainingJobVpcConfig(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
