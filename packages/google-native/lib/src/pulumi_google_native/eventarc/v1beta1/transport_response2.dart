// ignore_for_file: unused_element, unnecessary_cast

import 'pubsub_response2.dart';

/// Represents the transport intermediaries created for the trigger in order to deliver events.
class TransportResponse2 {
  /// The Pub/Sub topic and subscription used by Eventarc as delivery intermediary.
  final PubsubResponse2 pubsub;

  TransportResponse2({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pubsub'] = pubsub.toMap();
    return map;
  }

  factory TransportResponse2.fromMap(Map<String, dynamic> map) {
    return TransportResponse2(
      pubsub: PubsubResponse2.fromMap(
          (map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}
