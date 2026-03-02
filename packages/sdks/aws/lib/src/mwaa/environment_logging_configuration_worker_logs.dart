// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentLoggingConfigurationWorkerLogs {
  final pulumi.Input<String>? cloudWatchLogGroupArn;
  /// Enabling or disabling the collection of logs
  final pulumi.Input<bool>? enabled;
  /// Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  final pulumi.Input<String>? logLevel;

  /// Creates a new [EnvironmentLoggingConfigurationWorkerLogs].
  /// [cloudWatchLogGroupArn] Optional.
  /// [enabled] Enabling or disabling the collection of logs
  /// [logLevel] Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  EnvironmentLoggingConfigurationWorkerLogs({
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

  factory EnvironmentLoggingConfigurationWorkerLogs.fromMap(Map<String, dynamic> map) {
    return EnvironmentLoggingConfigurationWorkerLogs(
      cloudWatchLogGroupArn: map['cloudWatchLogGroupArn'] == null ? null : (map['cloudWatchLogGroupArn'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      logLevel: map['logLevel'] == null ? null : (map['logLevel'] as String).input(),
    );
  }
}

