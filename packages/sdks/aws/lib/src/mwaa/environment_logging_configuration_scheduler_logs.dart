// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentLoggingConfigurationSchedulerLogs {
  final pulumi.Input<String>? cloudWatchLogGroupArn;

  /// Enabling or disabling the collection of logs
  final pulumi.Input<bool>? enabled;

  /// Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  final pulumi.Input<String>? logLevel;

  /// Creates a new [EnvironmentLoggingConfigurationSchedulerLogs].
  /// [cloudWatchLogGroupArn] Optional.
  /// [enabled] Enabling or disabling the collection of logs
  /// [logLevel] Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  EnvironmentLoggingConfigurationSchedulerLogs({
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

  factory EnvironmentLoggingConfigurationSchedulerLogs.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvironmentLoggingConfigurationSchedulerLogs(
      cloudWatchLogGroupArn: (() {
        final guardedValue = map['cloudWatchLogGroupArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      logLevel: (() {
        final guardedValue = map['logLevel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
