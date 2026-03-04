// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TestGridProjectVpcConfig {
  /// A list of VPC security group IDs in your Amazon VPC.
  final pulumi.Input<List<String>> securityGroupIds;

  /// A list of VPC subnet IDs in your Amazon VPC.
  final pulumi.Input<List<String>> subnetIds;

  /// The ID of the Amazon VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [TestGridProjectVpcConfig].
  /// [securityGroupIds] A list of VPC security group IDs in your Amazon VPC.
  /// [subnetIds] A list of VPC subnet IDs in your Amazon VPC.
  /// [vpcId] The ID of the Amazon VPC.
  TestGridProjectVpcConfig({
    required this.securityGroupIds,
    required this.subnetIds,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'vpcId': vpcId,
    };
  }

  factory TestGridProjectVpcConfig.fromMap(Map<String, dynamic> map) {
    return TestGridProjectVpcConfig(
      securityGroupIds: pulumi.Input.fromValue(
        (map['securityGroupIds'] as List).cast<String>(),
      ),
      subnetIds: pulumi.Input.fromValue(
        (map['subnetIds'] as List).cast<String>(),
      ),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
