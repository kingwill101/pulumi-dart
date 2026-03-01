// ignore_for_file: unused_element, unnecessary_cast

class StandardAppVersionAutomaticScalingStandardSchedulerSettings {
  /// Maximum number of instances to run for this version. Set to zero to disable maxInstances configuration.
  /// **Note:** Starting from March 2025, App Engine sets the maxInstances default for standard environment deployments to 20. This change doesn't impact existing apps. To override the default, specify a new value between 0 and 2147483647, and deploy a new version or redeploy over an existing version. To disable the maxInstances default configuration setting, specify the maximum permitted value 2147483647.
  final int? maxInstances;

  /// Minimum number of instances to run for this version. Set to zero to disable minInstances configuration.
  final int? minInstances;

  /// Target CPU utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value.
  final double? targetCpuUtilization;

  /// Target throughput utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value.
  final double? targetThroughputUtilization;

  /// Creates a new [StandardAppVersionAutomaticScalingStandardSchedulerSettings].
  /// [maxInstances] Maximum number of instances to run for this version. Set to zero to disable maxInstances configuration.
  /// [minInstances] Minimum number of instances to run for this version. Set to zero to disable minInstances configuration.
  /// [targetCpuUtilization] Target CPU utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value.
  /// [targetThroughputUtilization] Target throughput utilization ratio to maintain when scaling. Should be a value in the range [0.50, 0.95], zero, or a negative value.
  StandardAppVersionAutomaticScalingStandardSchedulerSettings({
    this.maxInstances,
    this.minInstances,
    this.targetCpuUtilization,
    this.targetThroughputUtilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxInstances': ?maxInstances,
      'minInstances': ?minInstances,
      'targetCpuUtilization': ?targetCpuUtilization,
      'targetThroughputUtilization': ?targetThroughputUtilization,
    };
  }

  factory StandardAppVersionAutomaticScalingStandardSchedulerSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return StandardAppVersionAutomaticScalingStandardSchedulerSettings(
      maxInstances: map['maxInstances'] == null
          ? null
          : map['maxInstances'] as int,
      minInstances: map['minInstances'] == null
          ? null
          : map['minInstances'] as int,
      targetCpuUtilization: map['targetCpuUtilization'] == null
          ? null
          : map['targetCpuUtilization'] as double,
      targetThroughputUtilization: map['targetThroughputUtilization'] == null
          ? null
          : map['targetThroughputUtilization'] as double,
    );
  }
}
