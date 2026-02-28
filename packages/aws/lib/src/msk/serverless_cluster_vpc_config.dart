// ignore_for_file: unused_element, unnecessary_cast

class ServerlessClusterVpcConfig {
  /// Specifies up to five security groups that control inbound and outbound traffic for the serverless cluster.
  final List<String>? securityGroupIds;

  /// A list of subnets in at least two different Availability Zones that host your client applications.
  final List<String> subnetIds;

  /// Creates a new [ServerlessClusterVpcConfig].
  /// [securityGroupIds] Specifies up to five security groups that control inbound and outbound traffic for the serverless cluster.
  /// [subnetIds] A list of subnets in at least two different Availability Zones that host your client applications.
  ServerlessClusterVpcConfig({
    this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['subnetIds'] = subnetIds;
    return map;
  }

  factory ServerlessClusterVpcConfig.fromMap(Map<String, dynamic> map) {
    return ServerlessClusterVpcConfig(
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
    );
  }
}
