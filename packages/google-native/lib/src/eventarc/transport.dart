// ignore_for_file: unused_element, unnecessary_cast

import 'pubsub.dart';

/// Represents the transport intermediaries created for the trigger to deliver events.
class Transport {
  /// The Pub/Sub topic and subscription used by Eventarc as a transport intermediary.
  final Pubsub? pubsub;

  /// Creates a new [Transport].
  /// [pubsub] The Pub/Sub topic and subscription used by Eventarc as a transport intermediary.
  Transport({
    this.pubsub,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pubsubValue = pubsub;
    if (pubsubValue != null) {
      map['pubsub'] = pubsubValue.toMap();
    }
    return map;
  }

  factory Transport.fromMap(Map<String, dynamic> map) {
    return Transport(
      pubsub: map['pubsub'] == null
          ? null
          : Pubsub.fromMap((map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}
