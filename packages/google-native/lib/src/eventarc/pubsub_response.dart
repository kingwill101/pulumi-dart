// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Pub/Sub transport.
class PubsubResponse {
  /// The name of the Pub/Sub subscription created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`.
  final String subscription;

  /// Optional. The name of the Pub/Sub topic created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You can set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished`. The topic you provide here is not deleted by Eventarc at trigger deletion.
  final String topic;

  /// Creates a new [PubsubResponse].
  /// [subscription] The name of the Pub/Sub subscription created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/subscriptions/{SUBSCRIPTION_NAME}`.
  /// [topic] Optional. The name of the Pub/Sub topic created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You can set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished`. The topic you provide here is not deleted by Eventarc at trigger deletion.
  PubsubResponse({
    required this.subscription,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subscription'] = subscription;
    map['topic'] = topic;
    return map;
  }

  factory PubsubResponse.fromMap(Map<String, dynamic> map) {
    return PubsubResponse(
      subscription: map['subscription'] as String,
      topic: map['topic'] as String,
    );
  }
}
