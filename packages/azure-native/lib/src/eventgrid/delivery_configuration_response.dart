// ignore_for_file: unused_element, unnecessary_cast

import 'push_info_response.dart';
import 'queue_info_response.dart';

/// Properties of the delivery configuration information of the event subscription.
class DeliveryConfigurationResponse {
  /// Delivery mode of the event subscription.
  final String? deliveryMode;
  /// This property should be populated when deliveryMode is push and represents information about the push subscription.
  final PushInfoResponse? push;
  /// This property should be populated when deliveryMode is queue and represents information about the queue subscription.
  final QueueInfoResponse? queue;

  /// Creates a new [DeliveryConfigurationResponse].
  /// [deliveryMode] Delivery mode of the event subscription.
  /// [push] This property should be populated when deliveryMode is push and represents information about the push subscription.
  /// [queue] This property should be populated when deliveryMode is queue and represents information about the queue subscription.
  DeliveryConfigurationResponse({
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

  factory DeliveryConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryConfigurationResponse(
      deliveryMode: map['deliveryMode'] == null ? null : map['deliveryMode'] as String,
      push: map['push'] == null ? null : PushInfoResponse.fromMap((map['push'] as Map).cast<String, dynamic>()),
      queue: map['queue'] == null ? null : QueueInfoResponse.fromMap((map['queue'] as Map).cast<String, dynamic>()),
    );
  }
}

