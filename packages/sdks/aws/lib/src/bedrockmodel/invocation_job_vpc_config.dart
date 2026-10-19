// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InvocationJobVpcConfig {
  /// IDs of the security groups in the VPC to use.
  final pulumi.Input<List<String>> securityGroupIds;
  /// IDs of the subnets in the VPC to use.
  final pulumi.Input<List<String>> subnetIds;

  /// Creates a new [InvocationJobVpcConfig].
  /// [securityGroupIds] IDs of the security groups in the VPC to use.
  /// [subnetIds] IDs of the subnets in the VPC to use.
  const InvocationJobVpcConfig({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
    };
  }

  factory InvocationJobVpcConfig.fromMap(Map<String, dynamic> map) {
    return InvocationJobVpcConfig(
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
    );
  }
}
