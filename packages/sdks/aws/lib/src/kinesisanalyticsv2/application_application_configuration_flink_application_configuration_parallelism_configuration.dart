// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration {
  /// Whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.
  final pulumi.Input<bool?>? autoScalingEnabled;
  /// Whether the application uses the default parallelism for the Kinesis Data Analytics service. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `autoScalingEnabled`, `parallelism`, or `parallelismPerKpu` attribute values to be effective.
  final pulumi.Input<String> configurationType;
  /// Initial number of parallel tasks that a Flink-based application can perform.
  final pulumi.Input<int?>? parallelism;
  /// Number of parallel tasks that a Flink-based application can perform per Kinesis Processing Unit (KPU) used by the application.
  final pulumi.Input<int?>? parallelismPerKpu;

  /// Creates a new [ApplicationApplicationConfigurationFlinkApplicationConfigurationParallelismConfiguration].
  /// [autoScalingEnabled] Whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput.
  /// [configurationType] Whether the application uses the default parallelism for the Kinesis Data Analytics service. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `autoScalingEnabled`, `parallelism`, or `parallelismPerKpu` attribute values to be effective.
  /// [parallelism] Initial number of parallel tasks that a Flink-based application can perform.
  /// [parallelismPerKpu] Number of parallel tasks that a Flink-based application can perform per Kinesis Processing Unit (KPU) used by the application.
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
      parallelism: (() { final guardedValue = map['parallelism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      parallelismPerKpu: (() { final guardedValue = map['parallelismPerKpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
