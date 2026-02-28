// ignore_for_file: unused_element, unnecessary_cast

/// A Pub/Sub destination.
class PubsubDestination {
  /// The name of the Pub/Sub topic to publish to. Example: `projects/PROJECT_ID/topics/TOPIC_ID`.
  final String? topic;

  /// Creates a new [PubsubDestination].
  /// [topic] The name of the Pub/Sub topic to publish to. Example: `projects/PROJECT_ID/topics/TOPIC_ID`.
  PubsubDestination({
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

  factory PubsubDestination.fromMap(Map<String, dynamic> map) {
    return PubsubDestination(
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
