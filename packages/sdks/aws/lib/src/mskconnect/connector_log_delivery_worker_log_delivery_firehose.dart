// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorLogDeliveryWorkerLogDeliveryFirehose {
  /// The name of the Kinesis Data Firehose delivery stream that is the destination for log delivery.
  final pulumi.Input<String>? deliveryStream;
  /// Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ConnectorLogDeliveryWorkerLogDeliveryFirehose].
  /// [deliveryStream] The name of the Kinesis Data Firehose delivery stream that is the destination for log delivery.
  /// [enabled] Specifies whether connector logs get delivered to Amazon Kinesis Data Firehose.
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

