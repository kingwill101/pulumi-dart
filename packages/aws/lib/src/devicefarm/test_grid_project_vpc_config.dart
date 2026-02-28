// ignore_for_file: unused_element, unnecessary_cast

class TestGridProjectVpcConfig {
  /// A list of VPC security group IDs in your Amazon VPC.
  final List<String> securityGroupIds;

  /// A list of VPC subnet IDs in your Amazon VPC.
  final List<String> subnetIds;

  /// The ID of the Amazon VPC.
  final String vpcId;

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
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    map['vpcId'] = vpcId;
    return map;
  }

  factory TestGridProjectVpcConfig.fromMap(Map<String, dynamic> map) {
    return TestGridProjectVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
