// ignore_for_file: unused_element, unnecessary_cast

class CustomModelVpcConfig {
  /// VPC configuration security group IDs.
  final List<String> securityGroupIds;

  /// VPC configuration subnets.
  final List<String> subnetIds;

  CustomModelVpcConfig({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    return map;
  }

  factory CustomModelVpcConfig.fromMap(Map<String, dynamic> map) {
    return CustomModelVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
    );
  }
}
