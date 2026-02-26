// ignore_for_file: unused_element, unnecessary_cast

class ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs {
  /// Whether log delivery to Amazon CloudWatch Logs is enabled.
  final bool enabled;

  /// The name of the CloudWatch log group that is the destination for log delivery.
  final String? logGroup;

  ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs({
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

  factory ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs.fromMap(
      Map<String, dynamic> map) {
    return ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs(
      enabled: map['enabled'] as bool,
      logGroup: map['logGroup'] == null ? null : map['logGroup'] as String,
    );
  }
}
