// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_subscription_identity.dart';
import 'storage_blob_dead_letter_destination.dart';

/// Information about the deadletter destination with resource identity.
class DeadLetterWithResourceIdentity {
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during dead-lettering.
  final pulumi.Input<StorageBlobDeadLetterDestination>? deadLetterDestination;
  /// The identity to use when dead-lettering events.
  final pulumi.Input<EventSubscriptionIdentity>? identity;

  /// Creates a new [DeadLetterWithResourceIdentity].
  /// [deadLetterDestination] Information about the destination where events have to be delivered for the event subscription.
  /// [identity] The identity to use when dead-lettering events.
  DeadLetterWithResourceIdentity({
    this.deadLetterDestination,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterDestination': ?pulumi.Input.mapOptionalInputValue<StorageBlobDeadLetterDestination, Map<String, dynamic>>(deadLetterDestination, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<EventSubscriptionIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
    };
  }

  factory DeadLetterWithResourceIdentity.fromMap(Map<String, dynamic> map) {
    return DeadLetterWithResourceIdentity(
      deadLetterDestination: map['deadLetterDestination'] == null ? null : (StorageBlobDeadLetterDestination.fromMap((map['deadLetterDestination'] as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (EventSubscriptionIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

