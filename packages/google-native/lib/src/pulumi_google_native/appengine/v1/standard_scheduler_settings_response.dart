// ignore_for_file: unused_element, unnecessary_cast

/// Scheduler settings for standard environment.
class StandardSchedulerSettingsResponse {
  /// Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.
  final int maxInstances;

  /// Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
  final int minInstances;

  /// Target CPU utilization ratio to maintain when scaling.
  final double targetCpuUtilization;

  /// Target throughput utilization ratio to maintain when scaling
  final double targetThroughputUtilization;

  StandardSchedulerSettingsResponse({
    required this.maxInstances,
    required this.minInstances,
    required this.targetCpuUtilization,
    required this.targetThroughputUtilization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxInstances'] = maxInstances;
    map['minInstances'] = minInstances;
    map['targetCpuUtilization'] = targetCpuUtilization;
    map['targetThroughputUtilization'] = targetThroughputUtilization;
    return map;
  }

  factory StandardSchedulerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return StandardSchedulerSettingsResponse(
      maxInstances: map['maxInstances'] as int,
      minInstances: map['minInstances'] as int,
      targetCpuUtilization: map['targetCpuUtilization'] as double,
      targetThroughputUtilization: map['targetThroughputUtilization'] as double,
    );
  }
}
