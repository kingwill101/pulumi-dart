// ignore_for_file: unused_element, unnecessary_cast

import 'pubsub_response_eventarc_v1beta1.dart';

/// Represents the transport intermediaries created for the trigger in order to deliver events.
class TransportResponseEventarcV1beta1 {
  /// The Pub/Sub topic and subscription used by Eventarc as delivery intermediary.
  final PubsubResponseEventarcV1beta1 pubsub;

  TransportResponseEventarcV1beta1({
    required this.pubsub,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pubsub'] = pubsub.toMap();
    return map;
  }

  factory TransportResponseEventarcV1beta1.fromMap(Map<String, dynamic> map) {
    return TransportResponseEventarcV1beta1(
      pubsub: PubsubResponseEventarcV1beta1.fromMap(
          (map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}
