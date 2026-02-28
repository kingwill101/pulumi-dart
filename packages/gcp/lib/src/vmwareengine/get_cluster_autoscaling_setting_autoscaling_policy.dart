// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_autoscaling_setting_autoscaling_policy_consumed_memory_threshold.dart';
import 'get_cluster_autoscaling_setting_autoscaling_policy_cpu_threshold.dart';
import 'get_cluster_autoscaling_setting_autoscaling_policy_storage_threshold.dart';

class GetClusterAutoscalingSettingAutoscalingPolicy {
  final String autoscalePolicyId;

  /// Utilization thresholds pertaining to amount of consumed memory.
  final List<
          GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold>
      consumedMemoryThresholds;

  /// Utilization thresholds pertaining to CPU utilization.
  final List<GetClusterAutoscalingSettingAutoscalingPolicyCpuThreshold>
      cpuThresholds;

  /// The canonical identifier of the node type to add or remove.
  final String nodeTypeId;

  /// Number of nodes to add to a cluster during a scale-out operation.
  /// Must be divisible by 2 for stretched clusters.
  final int scaleOutSize;

  /// Utilization thresholds pertaining to amount of consumed storage.
  final List<GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold>
      storageThresholds;

  /// Creates a new [GetClusterAutoscalingSettingAutoscalingPolicy].
  /// [autoscalePolicyId] Required.
  /// [consumedMemoryThresholds] Utilization thresholds pertaining to amount of consumed memory.
  /// [cpuThresholds] Utilization thresholds pertaining to CPU utilization.
  /// [nodeTypeId] The canonical identifier of the node type to add or remove.
  /// [scaleOutSize] Number of nodes to add to a cluster during a scale-out operation.
  /// [storageThresholds] Utilization thresholds pertaining to amount of consumed storage.
  GetClusterAutoscalingSettingAutoscalingPolicy({
    required this.autoscalePolicyId,
    required this.consumedMemoryThresholds,
    required this.cpuThresholds,
    required this.nodeTypeId,
    required this.scaleOutSize,
    required this.storageThresholds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalePolicyId'] = autoscalePolicyId;
    map['consumedMemoryThresholds'] = pulumi.Input.encodeList<
        GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold,
        Map<String,
            dynamic>>(consumedMemoryThresholds, (value) => value.toMap());
    map['cpuThresholds'] = pulumi.Input.encodeList<
        GetClusterAutoscalingSettingAutoscalingPolicyCpuThreshold,
        Map<String, dynamic>>(cpuThresholds, (value) => value.toMap());
    map['nodeTypeId'] = nodeTypeId;
    map['scaleOutSize'] = scaleOutSize;
    map['storageThresholds'] = pulumi.Input.encodeList<
        GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold,
        Map<String, dynamic>>(storageThresholds, (value) => value.toMap());
    return map;
  }

  factory GetClusterAutoscalingSettingAutoscalingPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAutoscalingSettingAutoscalingPolicy(
      autoscalePolicyId: map['autoscalePolicyId'] as String,
      consumedMemoryThresholds: pulumi.Input.decodeList<
              GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold>(
          map['consumedMemoryThresholds'],
          (value) =>
              GetClusterAutoscalingSettingAutoscalingPolicyConsumedMemoryThreshold
                  .fromMap((value as Map).cast<String, dynamic>())),
      cpuThresholds: pulumi.Input.decodeList<
              GetClusterAutoscalingSettingAutoscalingPolicyCpuThreshold>(
          map['cpuThresholds'],
          (value) =>
              GetClusterAutoscalingSettingAutoscalingPolicyCpuThreshold.fromMap(
                  (value as Map).cast<String, dynamic>())),
      nodeTypeId: map['nodeTypeId'] as String,
      scaleOutSize: map['scaleOutSize'] as int,
      storageThresholds: pulumi.Input.decodeList<
              GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold>(
          map['storageThresholds'],
          (value) =>
              GetClusterAutoscalingSettingAutoscalingPolicyStorageThreshold
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
