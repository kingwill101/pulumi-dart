// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_autoscaling_settings_autoscaling_policy_consumed_memory_thresholds.dart';
import 'cluster_autoscaling_settings_autoscaling_policy_cpu_thresholds.dart';
import 'cluster_autoscaling_settings_autoscaling_policy_storage_thresholds.dart';

class ClusterAutoscalingSettingsAutoscalingPolicy {
  /// The identifier for this object. Format specified above.
  final String autoscalePolicyId;

  /// Utilization thresholds pertaining to amount of consumed memory.
  /// Structure is documented below.
  final ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds?
  consumedMemoryThresholds;

  /// Utilization thresholds pertaining to CPU utilization.
  /// Structure is documented below.
  final ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds? cpuThresholds;

  /// The canonical identifier of the node type to add or remove.
  final String nodeTypeId;

  /// Number of nodes to add to a cluster during a scale-out operation.
  /// Must be divisible by 2 for stretched clusters.
  final int scaleOutSize;

  /// Utilization thresholds pertaining to amount of consumed storage.
  /// Structure is documented below.
  final ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds?
  storageThresholds;

  /// Creates a new [ClusterAutoscalingSettingsAutoscalingPolicy].
  /// [autoscalePolicyId] The identifier for this object. Format specified above.
  /// [consumedMemoryThresholds] Utilization thresholds pertaining to amount of consumed memory.
  /// [cpuThresholds] Utilization thresholds pertaining to CPU utilization.
  /// [nodeTypeId] The canonical identifier of the node type to add or remove.
  /// [scaleOutSize] Number of nodes to add to a cluster during a scale-out operation.
  /// [storageThresholds] Utilization thresholds pertaining to amount of consumed storage.
  ClusterAutoscalingSettingsAutoscalingPolicy({
    required this.autoscalePolicyId,
    this.consumedMemoryThresholds,
    this.cpuThresholds,
    required this.nodeTypeId,
    required this.scaleOutSize,
    this.storageThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalePolicyId': autoscalePolicyId,
      'consumedMemoryThresholds': ?consumedMemoryThresholds == null
          ? null
          : consumedMemoryThresholds!.toMap(),
      'cpuThresholds': ?cpuThresholds == null ? null : cpuThresholds!.toMap(),
      'nodeTypeId': nodeTypeId,
      'scaleOutSize': scaleOutSize,
      'storageThresholds': ?storageThresholds == null
          ? null
          : storageThresholds!.toMap(),
    };
  }

  factory ClusterAutoscalingSettingsAutoscalingPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterAutoscalingSettingsAutoscalingPolicy(
      autoscalePolicyId: map['autoscalePolicyId'] as String,
      consumedMemoryThresholds: map['consumedMemoryThresholds'] == null
          ? null
          : ClusterAutoscalingSettingsAutoscalingPolicyConsumedMemoryThresholds.fromMap(
              (map['consumedMemoryThresholds'] as Map).cast<String, dynamic>(),
            ),
      cpuThresholds: map['cpuThresholds'] == null
          ? null
          : ClusterAutoscalingSettingsAutoscalingPolicyCpuThresholds.fromMap(
              (map['cpuThresholds'] as Map).cast<String, dynamic>(),
            ),
      nodeTypeId: map['nodeTypeId'] as String,
      scaleOutSize: map['scaleOutSize'] as int,
      storageThresholds: map['storageThresholds'] == null
          ? null
          : ClusterAutoscalingSettingsAutoscalingPolicyStorageThresholds.fromMap(
              (map['storageThresholds'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
