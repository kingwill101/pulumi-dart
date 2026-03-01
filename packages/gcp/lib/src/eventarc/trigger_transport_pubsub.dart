// ignore_for_file: unused_element, unnecessary_cast


class TriggerTransportPubsub {
  /// (Output)
  /// Output only. The name of the Pub/Sub subscription created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`.
  final String? subscription;
  /// Optional. The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}. You may set an existing topic for triggers of the type google.cloud.pubsub.topic.v1.messagePublished` only. The topic you provide here will not be deleted by Eventarc at trigger deletion.
  final String? topic;

  /// Creates a new [TriggerTransportPubsub].
  /// [subscription] (Output)
  /// [topic] Optional. The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}. You may set an existing topic for triggers of the type google.cloud.pubsub.topic.v1.messagePublished` only. The topic you provide here will not be deleted by Eventarc at trigger deletion.
  TriggerTransportPubsub({
    this.subscription,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscription': ?subscription,
      'topic': ?topic,
    };
  }

  factory TriggerTransportPubsub.fromMap(Map<String, dynamic> map) {
    return TriggerTransportPubsub(
      subscription: map['subscription'] == null ? null : map['subscription'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}

