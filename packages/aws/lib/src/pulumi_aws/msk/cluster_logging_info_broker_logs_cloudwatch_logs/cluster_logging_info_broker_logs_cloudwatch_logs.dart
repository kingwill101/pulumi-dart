// ignore_for_file: unused_element, unnecessary_cast

class ClusterLoggingInfoBrokerLogsCloudwatchLogs {
  final bool enabled;

  /// Name of the Cloudwatch Log Group to deliver logs to.
  final String? logGroup;

  ClusterLoggingInfoBrokerLogsCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final logGroupValue = logGroup;
    if (logGroupValue != null) {
      map['logGroup'] = logGroupValue;
    }
    return map;
  }

  factory ClusterLoggingInfoBrokerLogsCloudwatchLogs.fromMap(
      Map<String, dynamic> map) {
    return ClusterLoggingInfoBrokerLogsCloudwatchLogs(
      enabled: map['enabled'] as bool,
      logGroup: map['logGroup'] == null ? null : map['logGroup'] as String,
    );
  }
}
