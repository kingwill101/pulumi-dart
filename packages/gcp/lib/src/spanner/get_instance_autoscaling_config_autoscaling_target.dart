// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceAutoscalingConfigAutoscalingTarget {
  /// Specifies the target high priority cpu utilization percentage that the autoscaler
  /// should be trying to achieve for the instance.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization)..
  final int highPriorityCpuUtilizationPercent;

  /// Specifies the target storage utilization percentage that the autoscaler
  /// should be trying to achieve for the instance.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization).
  final int storageUtilizationPercent;

  /// The target total cpu utilization percentage that the autoscaler should be trying to achieve for the instance.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 90] inclusive.
  /// If not specified or set to 0, the autoscaler will skip scaling based on total cpu utilization.
  /// The value should be higher than high_priority_cpu_utilization_percent if present.
  final int totalCpuUtilizationPercent;

  /// Creates a new [GetInstanceAutoscalingConfigAutoscalingTarget].
  /// [highPriorityCpuUtilizationPercent] Specifies the target high priority cpu utilization percentage that the autoscaler
  /// [storageUtilizationPercent] Specifies the target storage utilization percentage that the autoscaler
  /// [totalCpuUtilizationPercent] The target total cpu utilization percentage that the autoscaler should be trying to achieve for the instance.
  GetInstanceAutoscalingConfigAutoscalingTarget({
    required this.highPriorityCpuUtilizationPercent,
    required this.storageUtilizationPercent,
    required this.totalCpuUtilizationPercent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'highPriorityCpuUtilizationPercent': highPriorityCpuUtilizationPercent,
      'storageUtilizationPercent': storageUtilizationPercent,
      'totalCpuUtilizationPercent': totalCpuUtilizationPercent,
    };
  }

  factory GetInstanceAutoscalingConfigAutoscalingTarget.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInstanceAutoscalingConfigAutoscalingTarget(
      highPriorityCpuUtilizationPercent:
          map['highPriorityCpuUtilizationPercent'] as int,
      storageUtilizationPercent: map['storageUtilizationPercent'] as int,
      totalCpuUtilizationPercent: map['totalCpuUtilizationPercent'] as int,
    );
  }
}
