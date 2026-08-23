// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_identity_response.dart';
import 'storage_blob_dead_letter_destination_response.dart';

/// Information about the deadletter destination with resource identity.
class DeadLetterWithResourceIdentityResponse {
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during dead-lettering.
  final pulumi.Input<StorageBlobDeadLetterDestinationResponse>? deadLetterDestination;
  /// The identity to use when dead-lettering events.
  final pulumi.Input<EventSubscriptionIdentityResponse>? identity;

  /// Creates a new [DeadLetterWithResourceIdentityResponse].
  /// [deadLetterDestination] Information about the destination where events have to be delivered for the event subscription.
  /// [identity] The identity to use when dead-lettering events.
  const DeadLetterWithResourceIdentityResponse({
    this.deadLetterDestination,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterDestination': ?pulumi.Input.mapOptionalInputValue<StorageBlobDeadLetterDestinationResponse, Map<String, dynamic>>(deadLetterDestination, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory DeadLetterWithResourceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return DeadLetterWithResourceIdentityResponse(
      deadLetterDestination: (() { final guardedValue = map['deadLetterDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageBlobDeadLetterDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventSubscriptionIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
