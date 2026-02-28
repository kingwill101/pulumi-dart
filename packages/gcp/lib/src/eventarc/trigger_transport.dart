// ignore_for_file: unused_element, unnecessary_cast

import 'trigger_transport_pubsub.dart';

class TriggerTransport {
  /// The Pub/Sub topic and subscription used by Eventarc as delivery intermediary.
  /// Structure is documented below.
  final TriggerTransportPubsub? pubsub;

  /// Creates a new [TriggerTransport].
  /// [pubsub] The Pub/Sub topic and subscription used by Eventarc as delivery intermediary.
  TriggerTransport({
    this.pubsub,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsub': ?pubsub == null ? null : pubsub!.toMap(),
    };
  }

  factory TriggerTransport.fromMap(Map<String, dynamic> map) {
    return TriggerTransport(
      pubsub: map['pubsub'] == null ? null : TriggerTransportPubsub.fromMap((map['pubsub'] as Map).cast<String, dynamic>()),
    );
  }
}

