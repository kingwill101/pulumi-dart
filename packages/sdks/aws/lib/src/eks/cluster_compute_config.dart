// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterComputeConfig {
  /// Request to enable or disable the compute capability on your EKS Auto Mode cluster. If the compute capability is enabled, EKS Auto Mode will create and delete EC2 Managed Instances in your Amazon Web Services account.
  final pulumi.Input<bool?>? enabled;
  /// Configuration for node pools that defines the compute resources for your EKS Auto Mode cluster. Valid options are `general-purpose` and `system`.
  final pulumi.Input<List<String>?>? nodePools;
  /// The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster. This value cannot be changed after the compute capability of EKS Auto Mode is enabled..
  final pulumi.Input<String?>? nodeRoleArn;

  /// Creates a new [ClusterComputeConfig].
  /// [enabled] Request to enable or disable the compute capability on your EKS Auto Mode cluster. If the compute capability is enabled, EKS Auto Mode will create and delete EC2 Managed Instances in your Amazon Web Services account.
  /// [nodePools] Configuration for node pools that defines the compute resources for your EKS Auto Mode cluster. Valid options are `general-purpose` and `system`.
  /// [nodeRoleArn] The ARN of the IAM Role EKS will assign to EC2 Managed Instances in your EKS Auto Mode cluster. This value cannot be changed after the compute capability of EKS Auto Mode is enabled..
  const ClusterComputeConfig({
    this.enabled,
    this.nodePools,
    this.nodeRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'nodePools': ?nodePools,
      'nodeRoleArn': ?nodeRoleArn,
    };
  }

  factory ClusterComputeConfig.fromMap(Map<String, dynamic> map) {
    return ClusterComputeConfig(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nodePools: (() { final guardedValue = map['nodePools']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeRoleArn: (() { final guardedValue = map['nodeRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
