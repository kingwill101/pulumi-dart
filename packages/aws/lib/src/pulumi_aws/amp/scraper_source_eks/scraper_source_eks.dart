// ignore_for_file: unused_element, unnecessary_cast

class ScraperSourceEks {
  final String clusterArn;

  /// List of the security group IDs for the Amazon EKS cluster VPC configuration.
  final List<String>? securityGroupIds;

  /// List of subnet IDs. Must be in at least two different availability zones.
  final List<String> subnetIds;

  ScraperSourceEks({
    required this.clusterArn,
    this.securityGroupIds,
    required this.subnetIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArn'] = clusterArn;
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    map['subnetIds'] = subnetIds;
    return map;
  }

  factory ScraperSourceEks.fromMap(Map<String, dynamic> map) {
    return ScraperSourceEks(
      clusterArn: map['clusterArn'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
    );
  }
}
