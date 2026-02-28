// ignore_for_file: unused_element, unnecessary_cast


/// Scheduler settings for standard environment.
class StandardSchedulerSettingsResponseAppengineV1beta {
  /// Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.
  final int maxInstances;
  /// Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
  final int minInstances;
  /// Target CPU utilization ratio to maintain when scaling.
  final double targetCpuUtilization;
  /// Target throughput utilization ratio to maintain when scaling
  final double targetThroughputUtilization;

  /// Creates a new [StandardSchedulerSettingsResponseAppengineV1beta].
  /// [maxInstances] Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.
  /// [minInstances] Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.
  /// [targetCpuUtilization] Target CPU utilization ratio to maintain when scaling.
  /// [targetThroughputUtilization] Target throughput utilization ratio to maintain when scaling
  StandardSchedulerSettingsResponseAppengineV1beta({
    required this.maxInstances,
    required this.minInstances,
    required this.targetCpuUtilization,
    required this.targetThroughputUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstances': maxInstances,
      'minInstances': minInstances,
      'targetCpuUtilization': targetCpuUtilization,
      'targetThroughputUtilization': targetThroughputUtilization,
    };
  }

  factory StandardSchedulerSettingsResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return StandardSchedulerSettingsResponseAppengineV1beta(
      maxInstances: map['maxInstances'] as int,
      minInstances: map['minInstances'] as int,
      targetCpuUtilization: map['targetCpuUtilization'] as double,
      targetThroughputUtilization: map['targetThroughputUtilization'] as double,
    );
  }
}

