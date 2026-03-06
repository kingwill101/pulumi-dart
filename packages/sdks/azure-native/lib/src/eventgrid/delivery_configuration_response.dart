// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'push_info_response.dart';
import 'queue_info_response.dart';

/// Properties of the delivery configuration information of the event subscription.
class DeliveryConfigurationResponse {
  /// Delivery mode of the event subscription.
  final pulumi.Input<String>? deliveryMode;
  /// This property should be populated when deliveryMode is push and represents information about the push subscription.
  final pulumi.Input<PushInfoResponse>? push;
  /// This property should be populated when deliveryMode is queue and represents information about the queue subscription.
  final pulumi.Input<QueueInfoResponse>? queue;

  /// Creates a new [DeliveryConfigurationResponse].
  /// [deliveryMode] Delivery mode of the event subscription.
  /// [push] This property should be populated when deliveryMode is push and represents information about the push subscription.
  /// [queue] This property should be populated when deliveryMode is queue and represents information about the queue subscription.
  const DeliveryConfigurationResponse({
    this.deliveryMode,
    this.push,
    this.queue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryMode': ?deliveryMode,
      'push': ?pulumi.Input.mapOptionalInputValue<PushInfoResponse, Map<String, dynamic>>(push, (value) => value.toMap()),
      'queue': ?pulumi.Input.mapOptionalInputValue<QueueInfoResponse, Map<String, dynamic>>(queue, (value) => value.toMap()),
    };
  }

  factory DeliveryConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryConfigurationResponse(
      deliveryMode: (() { final guardedValue = map['deliveryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      push: (() { final guardedValue = map['push']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PushInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      queue: (() { final guardedValue = map['queue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(QueueInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

