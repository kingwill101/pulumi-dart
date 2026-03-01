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

  /// Creates a new [ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration].
  /// [autoScalingEnabled] Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.
  /// [configurationType] Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `auto_scaling_enabled`, `parallelism`, or `parallelism_per_kpu` attribute values to be effective.
  /// [parallelism] Describes the initial number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform.
  /// [parallelismPerKpu] Describes the number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform per Kinesis Processing Unit (KPU) used by the application.
  ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration({
    this.autoScalingEnabled,
    required this.configurationType,
    this.parallelism,
    this.parallelismPerKpu,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingEnabled': ?autoScalingEnabled,
      'configurationType': configurationType,
      'parallelism': ?parallelism,
      'parallelismPerKpu': ?parallelismPerKpu,
    };
  }

  factory ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration(
      autoScalingEnabled: map['autoScalingEnabled'] == null
          ? null
          : map['autoScalingEnabled'] as bool,
      configurationType: map['configurationType'] as String,
      parallelism: map['parallelism'] == null
          ? null
          : map['parallelism'] as int,
      parallelismPerKpu: map['parallelismPerKpu'] == null
          ? null
          : map['parallelismPerKpu'] as int,
    );
  }
}
