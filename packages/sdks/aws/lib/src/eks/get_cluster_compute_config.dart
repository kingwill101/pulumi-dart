// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterComputeConfig {
  /// Whether zonal shift is enabled.
  final pulumi.Input<bool> enabled;

  /// List of node pools for the EKS Auto Mode compute capability.
  final pulumi.Input<List<String>> nodePools;

  /// The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster.
  final pulumi.Input<String> nodeRoleArn;

  /// Creates a new [GetClusterComputeConfig].
  /// [enabled] Whether zonal shift is enabled.
  /// [nodePools] List of node pools for the EKS Auto Mode compute capability.
  /// [nodeRoleArn] The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster.
  GetClusterComputeConfig({
    required this.enabled,
    required this.nodePools,
    required this.nodeRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'nodePools': nodePools,
      'nodeRoleArn': nodeRoleArn,
    };
  }

  factory GetClusterComputeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterComputeConfig(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      nodePools: pulumi.Input.fromValue(
        (map['nodePools'] as List).cast<String>(),
      ),
      nodeRoleArn: pulumi.Input.fromValue(map['nodeRoleArn'] as String),
    );
  }
}
