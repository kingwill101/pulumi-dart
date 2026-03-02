// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterLoggingInfoBrokerLogsCloudwatchLogs {
  final pulumi.Input<bool> enabled;
  /// Name of the Cloudwatch Log Group to deliver logs to.
  final pulumi.Input<String>? logGroup;

  /// Creates a new [ClusterLoggingInfoBrokerLogsCloudwatchLogs].
  /// [enabled] Required.
  /// [logGroup] Name of the Cloudwatch Log Group to deliver logs to.
  ClusterLoggingInfoBrokerLogsCloudwatchLogs({
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
      enabled: (map['enabled'] as bool).input(),
      logGroup: map['logGroup'] == null ? null : ((map['logGroup'] as String).input()).input(),
    );
  }
}

