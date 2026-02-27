// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Pub/Sub transport.
class PubsubResponseEventarcV1beta1 {
  /// The name of the Pub/Sub subscription created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`.
  final String subscription;

  /// Optional. The name of the Pub/Sub topic created and managed by Eventarc system as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You may set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished` only. The topic you provide here will not be deleted by Eventarc at trigger deletion.
  final String topic;

  PubsubResponseEventarcV1beta1({
    required this.subscription,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subscription'] = subscription;
    map['topic'] = topic;
    return map;
  }

  factory PubsubResponseEventarcV1beta1.fromMap(Map<String, dynamic> map) {
    return PubsubResponseEventarcV1beta1(
      subscription: map['subscription'] as String,
      topic: map['topic'] as String,
    );
  }
}
