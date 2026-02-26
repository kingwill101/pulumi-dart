// ignore_for_file: unused_element, unnecessary_cast

class WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType {
  /// Type of worker to deliver logs to CloudWatch (for example, `SPARK_DRIVER` and `SPARK_EXECUTOR`).
  final String key;

  /// List of log types to be delivered to CloudWatch (for example, `STDOUT` and `STDERR`).
  final List<String> values;

  WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['values'] = values;
    return map;
  }

  factory WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType.fromMap(
      Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfigurationCloudWatchLoggingConfigurationLogType(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
