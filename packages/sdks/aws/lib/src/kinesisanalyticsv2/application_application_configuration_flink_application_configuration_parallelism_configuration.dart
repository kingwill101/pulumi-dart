// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration {
  /// Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.
  final pulumi.Input<bool?>? autoScalingEnabled;
  /// Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `autoScalingEnabled`, `parallelism`, or `parallelismPerKpu` attribute values to be effective.
  final pulumi.Input<String> configurationType;
  /// Describes the initial number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform.
  final pulumi.Input<int?>? parallelism;
  /// Describes the number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform per Kinesis Processing Unit (KPU) used by the application.
  final pulumi.Input<int?>? parallelismPerKpu;

  /// Creates a new [ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration].
  /// [autoScalingEnabled] Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.
  /// [configurationType] Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `autoScalingEnabled`, `parallelism`, or `parallelismPerKpu` attribute values to be effective.
  /// [parallelism] Describes the initial number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform.
  /// [parallelismPerKpu] Describes the number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform per Kinesis Processing Unit (KPU) used by the application.
  const ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration({
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

  factory ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration(
      autoScalingEnabled: (() { final guardedValue = map['autoScalingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      parallelismPerKpu: (() { final guardedValue = map['parallelismPerKpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
