// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterLoggingInfoBrokerLogsCloudwatchLogs {
  final pulumi.Input<bool> enabled;
  /// Name of the Cloudwatch Log Group to deliver logs to.
  final pulumi.Input<String>? logGroup;

  /// Creates a new [ClusterLoggingInfoBrokerLogsCloudwatchLogs].
  /// [enabled] Required.
  /// [logGroup] Name of the Cloudwatch Log Group to deliver logs to.
  const ClusterLoggingInfoBrokerLogsCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'logGroup': ?logGroup,
    };
  }

  factory ClusterLoggingInfoBrokerLogsCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return ClusterLoggingInfoBrokerLogsCloudwatchLogs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      logGroup: (() { final guardedValue = map['logGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
