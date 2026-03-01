// ignore_for_file: unused_element, unnecessary_cast

class ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs {
  /// Whether log delivery to Amazon CloudWatch Logs is enabled.
  final bool enabled;

  /// The name of the CloudWatch log group that is the destination for log delivery.
  final String? logGroup;

  /// Creates a new [ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs].
  /// [enabled] Whether log delivery to Amazon CloudWatch Logs is enabled.
  /// [logGroup] The name of the CloudWatch log group that is the destination for log delivery.
  ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs({
    required this.enabled,
    this.logGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'logGroup': ?logGroup};
  }

  factory ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorLogDeliveryWorkerLogDeliveryCloudwatchLogs(
      enabled: map['enabled'] as bool,
      logGroup: map['logGroup'] == null ? null : map['logGroup'] as String,
    );
  }
}
