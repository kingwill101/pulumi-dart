// ignore_for_file: unused_element, unnecessary_cast


class CustomModelVpcConfig {
  /// VPC configuration security group IDs.
  final List<String> securityGroupIds;
  /// VPC configuration subnets.
  final List<String> subnetIds;

  /// Creates a new [CustomModelVpcConfig].
  /// [securityGroupIds] VPC configuration security group IDs.
  /// [subnetIds] VPC configuration subnets.
  CustomModelVpcConfig({
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
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
    );
  }
}

