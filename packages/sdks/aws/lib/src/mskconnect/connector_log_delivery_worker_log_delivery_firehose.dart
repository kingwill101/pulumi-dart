// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorLogDeliveryWorkerLogDeliveryFirehose {
  /// Name of the Kinesis Data Firehose delivery stream that is the destination for log delivery.
  final pulumi.Input<String?>? deliveryStream;
  /// Whether connector logs get delivered to Amazon Kinesis Data Firehose.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ConnectorLogDeliveryWorkerLogDeliveryFirehose].
  /// [deliveryStream] Name of the Kinesis Data Firehose delivery stream that is the destination for log delivery.
  /// [enabled] Whether connector logs get delivered to Amazon Kinesis Data Firehose.
  const ConnectorLogDeliveryWorkerLogDeliveryFirehose({
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
      deliveryStream: (() { final guardedValue = map['deliveryStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
