// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentLoggingConfigurationSchedulerLogs {
  /// ARN of the CloudWatch Logs log group where the logs are published.
  final pulumi.Input<String?>? cloudWatchLogGroupArn;
  /// Whether to enable the collection of logs.
  final pulumi.Input<bool?>? enabled;
  /// Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  final pulumi.Input<String?>? logLevel;

  /// Creates a new [EnvironmentLoggingConfigurationSchedulerLogs].
  /// [cloudWatchLogGroupArn] ARN of the CloudWatch Logs log group where the logs are published.
  /// [enabled] Whether to enable the collection of logs.
  /// [logLevel] Logging level. Valid values: `CRITICAL`, `ERROR`, `WARNING`, `INFO`, `DEBUG`. Will be `INFO` by default.
  const EnvironmentLoggingConfigurationSchedulerLogs({
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

  factory EnvironmentLoggingConfigurationSchedulerLogs.fromMap(Map<String, dynamic> map) {
    return EnvironmentLoggingConfigurationSchedulerLogs(
      cloudWatchLogGroupArn: (() { final guardedValue = map['cloudWatchLogGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logLevel: (() { final guardedValue = map['logLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
