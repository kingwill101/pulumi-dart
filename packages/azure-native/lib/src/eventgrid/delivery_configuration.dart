// ignore_for_file: unused_element, unnecessary_cast

import 'push_info.dart';
import 'queue_info.dart';

/// Properties of the delivery configuration information of the event subscription.
class DeliveryConfiguration {
  /// Delivery mode of the event subscription.
  final String? deliveryMode;
  /// This property should be populated when deliveryMode is push and represents information about the push subscription.
  final PushInfo? push;
  /// This property should be populated when deliveryMode is queue and represents information about the queue subscription.
  final QueueInfo? queue;

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
      'push': ?push == null ? null : push!.toMap(),
      'queue': ?queue == null ? null : queue!.toMap(),
    };
  }

  factory DeliveryConfiguration.fromMap(Map<String, dynamic> map) {
    return DeliveryConfiguration(
      deliveryMode: map['deliveryMode'] == null ? null : map['deliveryMode'] as String,
      push: map['push'] == null ? null : PushInfo.fromMap((map['push'] as Map).cast<String, dynamic>()),
      queue: map['queue'] == null ? null : QueueInfo.fromMap((map['queue'] as Map).cast<String, dynamic>()),
    );
  }
}

