// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_function_event_subscription_destination.dart';
import 'event_subscription_identity.dart';

/// Information about the delivery for an event subscription with resource identity.
class DeliveryWithResourceIdentity {
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery.
  final pulumi.Input<AzureFunctionEventSubscriptionDestination>? destination;

  /// The identity to use when delivering events.
  final pulumi.Input<EventSubscriptionIdentity>? identity;

  /// Creates a new [DeliveryWithResourceIdentity].
  /// [destination] Information about the destination where events have to be delivered for the event subscription.
  /// [identity] The identity to use when delivering events.
  DeliveryWithResourceIdentity({this.destination, this.identity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination':
          ?pulumi.Input.mapOptionalInputValue<
            AzureFunctionEventSubscriptionDestination,
            Map<String, dynamic>
          >(destination, (value) => value.toMap()),
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            EventSubscriptionIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
    };
  }

  factory DeliveryWithResourceIdentity.fromMap(Map<String, dynamic> map) {
    return DeliveryWithResourceIdentity(
      destination: (() {
        final guardedValue = map['destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureFunctionEventSubscriptionDestination.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventSubscriptionIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
