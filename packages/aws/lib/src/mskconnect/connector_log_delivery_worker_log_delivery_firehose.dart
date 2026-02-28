// ignore_for_file: unused_element, unnecessary_cast


class ConnectorLogDeliveryWorkerLogDeliveryFirehose {
  /// The name of the Kinesis Data Firehose delivery stream that is the destination for log delivery.
  final String? deliveryStream;
  /// Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.
  final bool enabled;

  /// Creates a new [ConnectorLogDeliveryWorkerLogDeliveryFirehose].
  /// [deliveryStream] The name of the Kinesis Data Firehose delivery stream that is the destination for log delivery.
  /// [enabled] Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.
  ConnectorLogDeliveryWorkerLogDeliveryFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStream': ?deliveryStream,
      'enabled': enabled,
    };
  }

  factory ConnectorLogDeliveryWorkerLogDeliveryFirehose.fromMap(Map<String, dynamic> map) {
    return ConnectorLogDeliveryWorkerLogDeliveryFirehose(
      deliveryStream: map['deliveryStream'] == null ? null : map['deliveryStream'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}

