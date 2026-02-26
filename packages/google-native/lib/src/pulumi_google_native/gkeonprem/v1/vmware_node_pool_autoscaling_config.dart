// ignore_for_file: unused_element, unnecessary_cast

/// NodePoolAutoscaling config for the NodePool to allow for the kubernetes to scale NodePool.
class VmwareNodePoolAutoscalingConfig {
  /// Maximum number of replicas in the NodePool.
  final int? maxReplicas;

  /// Minimum number of replicas in the NodePool.
  final int? minReplicas;

  VmwareNodePoolAutoscalingConfig({
    this.maxReplicas,
    this.minReplicas,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxReplicasValue = maxReplicas;
    if (maxReplicasValue != null) {
      map['maxReplicas'] = maxReplicasValue;
    }
    final minReplicasValue = minReplicas;
    if (minReplicasValue != null) {
      map['minReplicas'] = minReplicasValue;
    }
    return map;
  }

  factory VmwareNodePoolAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return VmwareNodePoolAutoscalingConfig(
      maxReplicas:
          map['maxReplicas'] == null ? null : map['maxReplicas'] as int,
      minReplicas:
          map['minReplicas'] == null ? null : map['minReplicas'] as int,
    );
  }
}
