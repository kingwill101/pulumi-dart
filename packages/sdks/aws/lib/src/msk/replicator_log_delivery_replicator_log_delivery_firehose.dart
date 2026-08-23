// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReplicatorLogDeliveryReplicatorLogDeliveryFirehose {
  /// Name of the Firehose delivery stream. Required if `enabled` is `true`. If `enabled` is `false`, this value must not be set.
  final pulumi.Input<String>? deliveryStream;
  /// Boolean whether to enable log delivery to Firehose.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ReplicatorLogDeliveryReplicatorLogDeliveryFirehose].
  /// [deliveryStream] Name of the Firehose delivery stream. Required if `enabled` is `true`. If `enabled` is `false`, this value must not be set.
  /// [enabled] Boolean whether to enable log delivery to Firehose.
  const ReplicatorLogDeliveryReplicatorLogDeliveryFirehose({
    this.deliveryStream,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryStream': ?deliveryStream,
      'enabled': enabled,
    };
  }

  factory ReplicatorLogDeliveryReplicatorLogDeliveryFirehose.fromMap(Map<String, dynamic> map) {
    return ReplicatorLogDeliveryReplicatorLogDeliveryFirehose(
      deliveryStream: (() { final guardedValue = map['deliveryStream']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
