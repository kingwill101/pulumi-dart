// ignore_for_file: unused_element, unnecessary_cast

import 'private_cloud_management_cluster_autoscaling_settings_autoscaling_policy_consumed_memory_thresholds.dart';
import 'private_cloud_management_cluster_autoscaling_settings_autoscaling_policy_cpu_thresholds.dart';
import 'private_cloud_management_cluster_autoscaling_settings_autoscaling_policy_storage_thresholds.dart';

class PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicy {
  /// The identifier for this object. Format specified above.
  final String autoscalePolicyId;

  /// Utilization thresholds pertaining to amount of consumed memory.
  /// Structure is documented below.
  final PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds?
      consumedMemoryThresholds;

  /// Utilization thresholds pertaining to CPU utilization.
  /// Structure is documented below.
  final PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds?
      cpuThresholds;

  /// The canonical identifier of the node type to add or remove.
  final String nodeTypeId;

  /// Number of nodes to add to a cluster during a scale-out operation.
  /// Must be divisible by 2 for stretched clusters.
  final int scaleOutSize;

  /// Utilization thresholds pertaining to amount of consumed storage.
  /// Structure is documented below.
  final PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds?
      storageThresholds;

  /// Creates a new [PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicy].
  /// [autoscalePolicyId] The identifier for this object. Format specified above.
  /// [consumedMemoryThresholds] Utilization thresholds pertaining to amount of consumed memory.
  /// [cpuThresholds] Utilization thresholds pertaining to CPU utilization.
  /// [nodeTypeId] The canonical identifier of the node type to add or remove.
  /// [scaleOutSize] Number of nodes to add to a cluster during a scale-out operation.
  /// [storageThresholds] Utilization thresholds pertaining to amount of consumed storage.
  PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicy({
    required this.autoscalePolicyId,
    this.consumedMemoryThresholds,
    this.cpuThresholds,
    required this.nodeTypeId,
    required this.scaleOutSize,
    this.storageThresholds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalePolicyId'] = autoscalePolicyId;
    final consumedMemoryThresholdsValue = consumedMemoryThresholds;
    if (consumedMemoryThresholdsValue != null) {
      map['consumedMemoryThresholds'] = consumedMemoryThresholdsValue.toMap();
    }
    final cpuThresholdsValue = cpuThresholds;
    if (cpuThresholdsValue != null) {
      map['cpuThresholds'] = cpuThresholdsValue.toMap();
    }
    map['nodeTypeId'] = nodeTypeId;
    map['scaleOutSize'] = scaleOutSize;
    final storageThresholdsValue = storageThresholds;
    if (storageThresholdsValue != null) {
      map['storageThresholds'] = storageThresholdsValue.toMap();
    }
    return map;
  }

  factory PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicy.fromMap(
      Map<String, dynamic> map) {
    return PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicy(
      autoscalePolicyId: map['autoscalePolicyId'] as String,
      consumedMemoryThresholds: map['consumedMemoryThresholds'] == null
          ? null
          : PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds
              .fromMap((map['consumedMemoryThresholds'] as Map)
                  .cast<String, dynamic>()),
      cpuThresholds: map['cpuThresholds'] == null
          ? null
          : PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds
              .fromMap((map['cpuThresholds'] as Map).cast<String, dynamic>()),
      nodeTypeId: map['nodeTypeId'] as String,
      scaleOutSize: map['scaleOutSize'] as int,
      storageThresholds: map['storageThresholds'] == null
          ? null
          : PrivateCloudManagementClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds
              .fromMap(
                  (map['storageThresholds'] as Map).cast<String, dynamic>()),
    );
  }
}
