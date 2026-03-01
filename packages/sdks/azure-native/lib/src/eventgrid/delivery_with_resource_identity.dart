// ignore_for_file: unused_element, unnecessary_cast

import 'azure_function_event_subscription_destination.dart';
import 'event_subscription_identity.dart';

/// Information about the delivery for an event subscription with resource identity.
class DeliveryWithResourceIdentity {
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery.
  final AzureFunctionEventSubscriptionDestination? destination;
  /// The identity to use when delivering events.
  final EventSubscriptionIdentity? identity;

  /// Creates a new [DeliveryWithResourceIdentity].
  /// [destination] Information about the destination where events have to be delivered for the event subscription.
  /// [identity] The identity to use when delivering events.
  DeliveryWithResourceIdentity({
    this.destination,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination == null ? null : destination!.toMap(),
      'identity': ?identity == null ? null : identity!.toMap(),
    };
  }

  factory DeliveryWithResourceIdentity.fromMap(Map<String, dynamic> map) {
    return DeliveryWithResourceIdentity(
      destination: map['destination'] == null ? null : AzureFunctionEventSubscriptionDestination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : EventSubscriptionIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
    );
  }
}

