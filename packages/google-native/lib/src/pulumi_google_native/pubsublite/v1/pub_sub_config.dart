// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for exporting to a Pub/Sub topic.
class PubSubConfig {
  /// The name of the Pub/Sub topic. Structured like: projects/{project_number}/topics/{topic_id}. The topic may be changed.
  final String? topic;

  PubSubConfig({
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

  factory PubSubConfig.fromMap(Map<String, dynamic> map) {
    return PubSubConfig(
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
