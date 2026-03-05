// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType {
  /// Type of worker to deliver logs to CloudWatch (for example, `SPARK_DRIVER` and `SPARK_EXECUTOR`).
  final pulumi.Input<String> key;
  /// List of log types to be delivered to CloudWatch (for example, `STDOUT` and `STDERR`).
  final pulumi.Input<List<String>> values;

  /// Creates a new [WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType].
  /// [key] Type of worker to deliver logs to CloudWatch (for example, `SPARK_DRIVER` and `SPARK_EXECUTOR`).
  /// [values] List of log types to be delivered to CloudWatch (for example, `STDOUT` and `STDERR`).
  WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

