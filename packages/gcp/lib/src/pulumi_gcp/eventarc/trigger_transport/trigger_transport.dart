// ignore_for_file: unused_element, unnecessary_cast

import '../trigger_transport_pubsub/trigger_transport_pubsub.dart';

class TriggerTransport {
  /// The Pub/Sub topic and subscription used by Eventarc as delivery intermediary.
  /// Structure is documented below.
  final TriggerTransportPubsub? pubsub;

  TriggerTransport({
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

  factory TriggerTransport.fromMap(Map<String, dynamic> map) {
    return TriggerTransport(
      pubsub: map['pubsub'] == null
          ? null
          : TriggerTransportPubsub.fromMap(
              (map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}
