// ignore_for_file: unused_element, unnecessary_cast

class GetClusterComputeConfig {
  /// Whether zonal shift is enabled.
  final bool enabled;

  /// List of node pools for the EKS Auto Mode compute capability.
  final List<String> nodePools;

  /// The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster.
  final String nodeRoleArn;

  GetClusterComputeConfig({
    required this.enabled,
    required this.nodePools,
    required this.nodeRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['nodePools'] = nodePools;
    map['nodeRoleArn'] = nodeRoleArn;
    return map;
  }

  factory GetClusterComputeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterComputeConfig(
      enabled: map['enabled'] as bool,
      nodePools: (map['nodePools'] as List).cast<String>(),
      nodeRoleArn: map['nodeRoleArn'] as String,
    );
  }
}
