// ignore_for_file: unused_element, unnecessary_cast

class ClusterComputeConfig {
  /// Request to enable or disable the compute capability on your EKS Auto Mode cluster. If the compute capability is enabled, EKS Auto Mode will create and delete EC2 Managed Instances in your Amazon Web Services account.
  final bool? enabled;

  /// Configuration for node pools that defines the compute resources for your EKS Auto Mode cluster. Valid options are `general-purpose` and `system`.
  final List<String>? nodePools;

  /// The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster. This value cannot be changed after the compute capability of EKS Auto Mode is enabled..
  final String? nodeRoleArn;

  /// Creates a new [ClusterComputeConfig].
  /// [enabled] Request to enable or disable the compute capability on your EKS Auto Mode cluster. If the compute capability is enabled, EKS Auto Mode will create and delete EC2 Managed Instances in your Amazon Web Services account.
  /// [nodePools] Configuration for node pools that defines the compute resources for your EKS Auto Mode cluster. Valid options are `general-purpose` and `system`.
  /// [nodeRoleArn] The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster. This value cannot be changed after the compute capability of EKS Auto Mode is enabled..
  ClusterComputeConfig({
    this.enabled,
    this.nodePools,
    this.nodeRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final nodePoolsValue = nodePools;
    if (nodePoolsValue != null) {
      map['nodePools'] = nodePoolsValue;
    }
    final nodeRoleArnValue = nodeRoleArn;
    if (nodeRoleArnValue != null) {
      map['nodeRoleArn'] = nodeRoleArnValue;
    }
    return map;
  }

  factory ClusterComputeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterComputeConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      nodePools: map['nodePools'] == null
          ? null
          : (map['nodePools'] as List).cast<String>(),
      nodeRoleArn:
          map['nodeRoleArn'] == null ? null : map['nodeRoleArn'] as String,
    );
  }
}
