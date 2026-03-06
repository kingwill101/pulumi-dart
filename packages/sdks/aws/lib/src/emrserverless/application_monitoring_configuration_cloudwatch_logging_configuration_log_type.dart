// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType {
  /// The worker type. Valid values are `SPARK_DRIVER`, `SPARK_EXECUTOR`, `HIVE_DRIVER`, and `TEZ_TASK`.
  final pulumi.Input<String> name;
  /// The list of log types to publish. Valid values are `STDOUT`, `STDERR`, `HIVE_LOG`, `TEZ_AM`, and `SYSTEM_LOGS`.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType].
  /// [name] The worker type. Valid values are `SPARK_DRIVER`, `SPARK_EXECUTOR`, `HIVE_DRIVER`, and `TEZ_TASK`.
  /// [values] The list of log types to publish. Valid values are `STDOUT`, `STDERR`, `HIVE_LOG`, `TEZ_AM`, and `SYSTEM_LOGS`.
  const ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType.fromMap(Map<String, dynamic> map) {
    return ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

