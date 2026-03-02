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
  DeadLetterWithResourceIdentityResponse({
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
      deadLetterDestination: map['deadLetterDestination'] == null ? null : (StorageBlobDeadLetterDestinationResponse.fromMap((map['deadLetterDestination'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (EventSubscriptionIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

