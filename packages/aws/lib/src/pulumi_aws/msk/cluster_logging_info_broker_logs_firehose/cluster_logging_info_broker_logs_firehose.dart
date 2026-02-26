// ignore_for_file: unused_element, unnecessary_cast

class ClusterLoggingInfoBrokerLogsFirehose {
  /// Name of the Kinesis Data Firehose delivery stream to deliver logs to.
  final String? deliveryStream;
  final bool enabled;

  ClusterLoggingInfoBrokerLogsFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deliveryStreamValue = deliveryStream;
    if (deliveryStreamValue != null) {
      map['deliveryStream'] = deliveryStreamValue;
    }
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterLoggingInfoBrokerLogsFirehose.fromMap(
      Map<String, dynamic> map) {
    return ClusterLoggingInfoBrokerLogsFirehose(
      deliveryStream: map['deliveryStream'] == null
          ? null
          : map['deliveryStream'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
