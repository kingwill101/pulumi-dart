// ignore_for_file: unused_element, unnecessary_cast

class ClusterLogDeliveryConfiguration {
  /// Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource.
  final String destination;

  /// For CloudWatch Logs use `cloudwatch-logs` or for Kinesis Data Firehose use `kinesis-firehose`.
  final String destinationType;

  /// Valid values are `json` or `text`
  final String logFormat;

  /// Valid values are  `slow-log` or `engine-log`. Max 1 of each.
  final String logType;

  ClusterLogDeliveryConfiguration({
    required this.destination,
    required this.destinationType,
    required this.logFormat,
    required this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination;
    map['destinationType'] = destinationType;
    map['logFormat'] = logFormat;
    map['logType'] = logType;
    return map;
  }

  factory ClusterLogDeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterLogDeliveryConfiguration(
      destination: map['destination'] as String,
      destinationType: map['destinationType'] as String,
      logFormat: map['logFormat'] as String,
      logType: map['logType'] as String,
    );
  }
}
