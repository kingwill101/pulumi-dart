// ignore_for_file: unused_element, unnecessary_cast

/// Represents a Pub/Sub transport.
class Pubsub {
  /// Optional. The name of the Pub/Sub topic created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You can set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished`. The topic you provide here is not deleted by Eventarc at trigger deletion.
  final String? topic;

  /// Creates a new [Pubsub].
  /// [topic] Optional. The name of the Pub/Sub topic created and managed by Eventarc as a transport for the event delivery. Format: `projects/{PROJECT_ID}/topics/{TOPIC_NAME}`. You can set an existing topic for triggers of the type `google.cloud.pubsub.topic.v1.messagePublished`. The topic you provide here is not deleted by Eventarc at trigger deletion.
  Pubsub({
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory Pubsub.fromMap(Map<String, dynamic> map) {
    return Pubsub(
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
