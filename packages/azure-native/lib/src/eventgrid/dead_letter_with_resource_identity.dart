// ignore_for_file: unused_element, unnecessary_cast

import 'event_subscription_identity.dart';
import 'storage_blob_dead_letter_destination.dart';

/// Information about the deadletter destination with resource identity.
class DeadLetterWithResourceIdentity {
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during dead-lettering.
  final StorageBlobDeadLetterDestination? deadLetterDestination;
  /// The identity to use when dead-lettering events.
  final EventSubscriptionIdentity? identity;

  /// Creates a new [DeadLetterWithResourceIdentity].
  /// [deadLetterDestination] Information about the destination where events have to be delivered for the event subscription.
  /// [identity] The identity to use when dead-lettering events.
  DeadLetterWithResourceIdentity({
    this.deadLetterDestination,
    this.identity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deadLetterDestination': ?deadLetterDestination == null ? null : deadLetterDestination!.toMap(),
      'identity': ?identity == null ? null : identity!.toMap(),
    };
  }

  factory DeadLetterWithResourceIdentity.fromMap(Map<String, dynamic> map) {
    return DeadLetterWithResourceIdentity(
      deadLetterDestination: map['deadLetterDestination'] == null ? null : StorageBlobDeadLetterDestination.fromMap((map['deadLetterDestination'] as Map).cast<String, dynamic>()),
      identity: map['identity'] == null ? null : EventSubscriptionIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
    );
  }
}

