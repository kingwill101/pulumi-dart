// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceLoggingConfigurationAccessLogsCloudwatchLogs {
  /// Indicates whether logging is enabled.
  final pulumi.Input<bool> enabled;
  /// The name of the CloudWatch Logs Log Group.
  final pulumi.Input<String>? logGroup;

  /// Creates a new [InstanceLoggingConfigurationAccessLogsCloudwatchLogs].
  /// [enabled] Indicates whether logging is enabled.
  /// [logGroup] The name of the CloudWatch Logs Log Group.
  const InstanceLoggingConfigurationAccessLogsCloudwatchLogs({
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
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      logGroup: (() { final guardedValue = map['logGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

