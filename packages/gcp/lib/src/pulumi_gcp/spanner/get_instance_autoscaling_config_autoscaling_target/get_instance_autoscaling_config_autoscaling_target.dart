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
  /// The value should be higher than<span pulumi-lang-nodejs=" highPriorityCpuUtilizationPercent " pulumi-lang-dotnet=" HighPriorityCpuUtilizationPercent " pulumi-lang-go=" highPriorityCpuUtilizationPercent " pulumi-lang-python=" high_priority_cpu_utilization_percent " pulumi-lang-yaml=" highPriorityCpuUtilizationPercent " pulumi-lang-java=" highPriorityCpuUtilizationPercent "> high_priority_cpu_utilization_percent </span>if present.
  final int totalCpuUtilizationPercent;

  GetInstanceAutoscalingConfigAutoscalingTarget({
    required this.highPriorityCpuUtilizationPercent,
    required this.storageUtilizationPercent,
    required this.totalCpuUtilizationPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['highPriorityCpuUtilizationPercent'] =
        highPriorityCpuUtilizationPercent;
    map['storageUtilizationPercent'] = storageUtilizationPercent;
    map['totalCpuUtilizationPercent'] = totalCpuUtilizationPercent;
    return map;
  }

  factory GetInstanceAutoscalingConfigAutoscalingTarget.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAutoscalingTarget(
      highPriorityCpuUtilizationPercent:
          map['highPriorityCpuUtilizationPercent'] as int,
      storageUtilizationPercent: map['storageUtilizationPercent'] as int,
      totalCpuUtilizationPercent: map['totalCpuUtilizationPercent'] as int,
    );
  }
}
