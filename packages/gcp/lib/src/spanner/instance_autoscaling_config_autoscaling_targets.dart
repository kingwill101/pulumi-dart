// ignore_for_file: unused_element, unnecessary_cast

class InstanceAutoscalingConfigAutoscalingTargets {
  /// Specifies the target high priority cpu utilization percentage that the autoscaler
  /// should be trying to achieve for the instance.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization)..
  final int? highPriorityCpuUtilizationPercent;

  /// Specifies the target storage utilization percentage that the autoscaler
  /// should be trying to achieve for the instance.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization).
  final int? storageUtilizationPercent;

  /// The target total cpu utilization percentage that the autoscaler should be trying to achieve for the instance.
  /// This number is on a scale from 0 (no utilization) to 100 (full utilization). The valid range is [10, 90] inclusive.
  /// If not specified or set to 0, the autoscaler will skip scaling based on total cpu utilization.
  /// The value should be higher than high_priority_cpu_utilization_percent if present.
  final int? totalCpuUtilizationPercent;

  /// Creates a new [InstanceAutoscalingConfigAutoscalingTargets].
  /// [highPriorityCpuUtilizationPercent] Specifies the target high priority cpu utilization percentage that the autoscaler
  /// [storageUtilizationPercent] Specifies the target storage utilization percentage that the autoscaler
  /// [totalCpuUtilizationPercent] The target total cpu utilization percentage that the autoscaler should be trying to achieve for the instance.
  InstanceAutoscalingConfigAutoscalingTargets({
    this.highPriorityCpuUtilizationPercent,
    this.storageUtilizationPercent,
    this.totalCpuUtilizationPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final highPriorityCpuUtilizationPercentValue =
        highPriorityCpuUtilizationPercent;
    if (highPriorityCpuUtilizationPercentValue != null) {
      map['highPriorityCpuUtilizationPercent'] =
          highPriorityCpuUtilizationPercentValue;
    }
    final storageUtilizationPercentValue = storageUtilizationPercent;
    if (storageUtilizationPercentValue != null) {
      map['storageUtilizationPercent'] = storageUtilizationPercentValue;
    }
    final totalCpuUtilizationPercentValue = totalCpuUtilizationPercent;
    if (totalCpuUtilizationPercentValue != null) {
      map['totalCpuUtilizationPercent'] = totalCpuUtilizationPercentValue;
    }
    return map;
  }

  factory InstanceAutoscalingConfigAutoscalingTargets.fromMap(
      Map<String, dynamic> map) {
    return InstanceAutoscalingConfigAutoscalingTargets(
      highPriorityCpuUtilizationPercent:
          map['highPriorityCpuUtilizationPercent'] == null
              ? null
              : map['highPriorityCpuUtilizationPercent'] as int,
      storageUtilizationPercent: map['storageUtilizationPercent'] == null
          ? null
          : map['storageUtilizationPercent'] as int,
      totalCpuUtilizationPercent: map['totalCpuUtilizationPercent'] == null
          ? null
          : map['totalCpuUtilizationPercent'] as int,
    );
  }
}
