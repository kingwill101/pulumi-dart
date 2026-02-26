// ignore_for_file: unused_element, unnecessary_cast

class ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType {
  /// The worker type. Valid values are `SPARK_DRIVER`, `SPARK_EXECUTOR`, `HIVE_DRIVER`, and `TEZ_TASK`.
  final String name;

  /// The list of log types to publish. Valid values are `STDOUT`, `STDERR`, `HIVE_LOG`, `TEZ_AM`, and `SYSTEM_LOGS`.
  final List<String> values;

  ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType.fromMap(
      Map<String, dynamic> map) {
    return ApplicationMonitoringConfigurationCloudwatchLoggingConfigurationLogType(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
