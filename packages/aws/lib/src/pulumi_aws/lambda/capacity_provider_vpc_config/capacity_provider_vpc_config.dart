// ignore_for_file: unused_element, unnecessary_cast

class CapacityProviderVpcConfig {
  /// List of security group IDs for the VPC.
  final List<String> securityGroupIds;

  /// List of subnet IDs for the VPC.
  final List<String> subnetIds;

  CapacityProviderVpcConfig({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    return map;
  }

  factory CapacityProviderVpcConfig.fromMap(Map<String, dynamic> map) {
    return CapacityProviderVpcConfig(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
    );
  }
}
