// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'push_info.dart';
import 'queue_info.dart';

/// Properties of the delivery configuration information of the event subscription.
class DeliveryConfiguration {
  /// Delivery mode of the event subscription.
  final pulumi.Input<String>? deliveryMode;
  /// This property should be populated when deliveryMode is push and represents information about the push subscription.
  final pulumi.Input<PushInfo>? push;
  /// This property should be populated when deliveryMode is queue and represents information about the queue subscription.
  final pulumi.Input<QueueInfo>? queue;

  /// Creates a new [DeliveryConfiguration].
  /// [deliveryMode] Delivery mode of the event subscription.
  /// [push] This property should be populated when deliveryMode is push and represents information about the push subscription.
  /// [queue] This property should be populated when deliveryMode is queue and represents information about the queue subscription.
  DeliveryConfiguration({
    this.deliveryMode,
    this.push,
    this.queue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryMode': ?deliveryMode,
      'push': ?pulumi.Input.mapOptionalInputValue<PushInfo, Map<String, dynamic>>(push, (value) => value.toMap()),
      'queue': ?pulumi.Input.mapOptionalInputValue<QueueInfo, Map<String, dynamic>>(queue, (value) => value.toMap()),
    };
  }

  factory DeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return DeliveryConfiguration(
      deliveryMode: map['deliveryMode'] == null ? null : (map['deliveryMode']! as String).input(),
      push: map['push'] == null ? null : (PushInfo.fromMap((map['push']! as Map).cast<String, dynamic>())).input(),
      queue: map['queue'] == null ? null : (QueueInfo.fromMap((map['queue']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

