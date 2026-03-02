// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_function_event_subscription_destination_response.dart';
import 'event_subscription_identity_response.dart';

/// Information about the delivery for an event subscription with resource identity.
class DeliveryWithResourceIdentityResponse {
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery.
  final pulumi.Input<AzureFunctionEventSubscriptionDestinationResponse>? destination;
  /// The identity to use when delivering events.
  final pulumi.Input<EventSubscriptionIdentityResponse>? identity;

  /// Creates a new [DeliveryWithResourceIdentityResponse].
  /// [destination] Information about the destination where events have to be delivered for the event subscription.
  /// [identity] The identity to use when delivering events.
  DeliveryWithResourceIdentityResponse({
    this.destination,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?pulumi.Input.mapOptionalInputValue<AzureFunctionEventSubscriptionDestinationResponse, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory DeliveryWithResourceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryWithResourceIdentityResponse(
      destination: map['destination'] == null ? null : (AzureFunctionEventSubscriptionDestinationResponse.fromMap((map['destination'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (EventSubscriptionIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

