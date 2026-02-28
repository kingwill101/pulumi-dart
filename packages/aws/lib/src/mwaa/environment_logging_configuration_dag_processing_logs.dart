// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentLoggingConfigurationDagProcessingLogs {
  final String? cloudWatchLogGroupArn;

  /// Enabling or disabling the collection of logs
  final bool? enabled;

  /// Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  final String? logLevel;

  /// Creates a new [EnvironmentLoggingConfigurationDagProcessingLogs].
  /// [cloudWatchLogGroupArn] Optional.
  /// [enabled] Enabling or disabling the collection of logs
  /// [logLevel] Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  EnvironmentLoggingConfigurationDagProcessingLogs({
    this.cloudWatchLogGroupArn,
    this.enabled,
    this.logLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudWatchLogGroupArnValue = cloudWatchLogGroupArn;
    if (cloudWatchLogGroupArnValue != null) {
      map['cloudWatchLogGroupArn'] = cloudWatchLogGroupArnValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final logLevelValue = logLevel;
    if (logLevelValue != null) {
      map['logLevel'] = logLevelValue;
    }
    return map;
  }

  factory EnvironmentLoggingConfigurationDagProcessingLogs.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentLoggingConfigurationDagProcessingLogs(
      cloudWatchLogGroupArn: map['cloudWatchLogGroupArn'] == null
          ? null
          : map['cloudWatchLogGroupArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
    );
  }
}
