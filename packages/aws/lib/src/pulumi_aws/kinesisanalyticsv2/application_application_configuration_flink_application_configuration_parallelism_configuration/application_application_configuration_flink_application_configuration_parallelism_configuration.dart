// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration {
  /// Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.
  final bool? autoScalingEnabled;

  /// Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `auto_scaling_enabled`, `parallelism`, or `parallelism_per_kpu` attribute values to be effective.
  final String configurationType;

  /// Describes the initial number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform.
  final int? parallelism;

  /// Describes the number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform per Kinesis Processing Unit (KPU) used by the application.
  final int? parallelismPerKpu;

  ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration({
    this.autoScalingEnabled,
    required this.configurationType,
    this.parallelism,
    this.parallelismPerKpu,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoScalingEnabledValue = autoScalingEnabled;
    if (autoScalingEnabledValue != null) {
      map['autoScalingEnabled'] = autoScalingEnabledValue;
    }
    map['configurationType'] = configurationType;
    final parallelismValue = parallelism;
    if (parallelismValue != null) {
      map['parallelism'] = parallelismValue;
    }
    final parallelismPerKpuValue = parallelismPerKpu;
    if (parallelismPerKpuValue != null) {
      map['parallelismPerKpu'] = parallelismPerKpuValue;
    }
    return map;
  }

  factory ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration(
      autoScalingEnabled: map['autoScalingEnabled'] == null
          ? null
          : map['autoScalingEnabled'] as bool,
      configurationType: map['configurationType'] as String,
      parallelism:
          map['parallelism'] == null ? null : map['parallelism'] as int,
      parallelismPerKpu: map['parallelismPerKpu'] == null
          ? null
          : map['parallelismPerKpu'] as int,
    );
  }
}
