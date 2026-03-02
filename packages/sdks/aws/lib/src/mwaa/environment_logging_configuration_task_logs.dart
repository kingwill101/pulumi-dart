// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentLoggingConfigurationTaskLogs {
  final pulumi.Input<String>? cloudWatchLogGroupArn;
  /// Enabling or disabling the collection of logs
  final pulumi.Input<bool>? enabled;
  /// Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  final pulumi.Input<String>? logLevel;

  /// Creates a new [EnvironmentLoggingConfigurationTaskLogs].
  /// [cloudWatchLogGroupArn] Optional.
  /// [enabled] Enabling or disabling the collection of logs
  /// [logLevel] Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  EnvironmentLoggingConfigurationTaskLogs({
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

  factory EnvironmentLoggingConfigurationTaskLogs.fromMap(Map<String, dynamic> map) {
    return EnvironmentLoggingConfigurationTaskLogs(
      cloudWatchLogGroupArn: map['cloudWatchLogGroupArn'] == null ? null : ((map['cloudWatchLogGroupArn'] as String).input()).input(),
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      logLevel: map['logLevel'] == null ? null : ((map['logLevel'] as String).input()).input(),
    );
  }
}

