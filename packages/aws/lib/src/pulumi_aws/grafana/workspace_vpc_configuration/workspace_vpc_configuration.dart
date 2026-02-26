// ignore_for_file: unused_element, unnecessary_cast

class WorkspaceVpcConfiguration {
  /// The list of Amazon EC2 security group IDs attached to the Amazon VPC for your Grafana workspace to connect.
  final List<String> securityGroupIds;

  /// The list of Amazon EC2 subnet IDs created in the Amazon VPC for your Grafana workspace to connect.
  final List<String> subnetIds;

  WorkspaceVpcConfiguration({
    required this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    return map;
  }

  factory WorkspaceVpcConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkspaceVpcConfiguration(
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
    );
  }
}
