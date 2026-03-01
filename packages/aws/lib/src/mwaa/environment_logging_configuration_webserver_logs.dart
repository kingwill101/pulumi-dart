// ignore_for_file: unused_element, unnecessary_cast

class EnvironmentLoggingConfigurationWebserverLogs {
  final String? cloudWatchLogGroupArn;

  /// Enabling or disabling the collection of logs
  final bool? enabled;

  /// Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  final String? logLevel;

  /// Creates a new [EnvironmentLoggingConfigurationWebserverLogs].
  /// [cloudWatchLogGroupArn] Optional.
  /// [enabled] Enabling or disabling the collection of logs
  /// [logLevel] Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  EnvironmentLoggingConfigurationWebserverLogs({
    this.cloudWatchLogGroupArn,
    this.enabled,
    this.logLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogGroupArn': ?cloudWatchLogGroupArn,
      'enabled': ?enabled,
      'logLevel': ?logLevel,
    };
  }

  factory EnvironmentLoggingConfigurationWebserverLogs.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvironmentLoggingConfigurationWebserverLogs(
      cloudWatchLogGroupArn: map['cloudWatchLogGroupArn'] == null
          ? null
          : map['cloudWatchLogGroupArn'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
    );
  }
}
