// ignore_for_file: unused_element, unnecessary_cast


class InstanceLoggingConfigurationAccessLogsCloudwatchLogs {
  /// Indicates whether logging is enabled.
  final bool enabled;
  /// The name of the CloudWatch Logs Log Group.
  final String? logGroup;

  /// Creates a new [InstanceLoggingConfigurationAccessLogsCloudwatchLogs].
  /// [enabled] Indicates whether logging is enabled.
  /// [logGroup] The name of the CloudWatch Logs Log Group.
  InstanceLoggingConfigurationAccessLogsCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'logGroup': ?logGroup,
    };
  }

  factory InstanceLoggingConfigurationAccessLogsCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return InstanceLoggingConfigurationAccessLogsCloudwatchLogs(
      enabled: map['enabled'] as bool,
      logGroup: map['logGroup'] == null ? null : map['logGroup'] as String,
    );
  }
}

