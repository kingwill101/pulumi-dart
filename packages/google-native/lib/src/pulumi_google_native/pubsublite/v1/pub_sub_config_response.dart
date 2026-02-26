// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for exporting to a Pub/Sub topic.
class PubSubConfigResponse {
  /// The name of the Pub/Sub topic. Structured like: projects/{project_number}/topics/{topic_id}. The topic may be changed.
  final String topic;

  PubSubConfigResponse({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topic'] = topic;
    return map;
  }

  factory PubSubConfigResponse.fromMap(Map<String, dynamic> map) {
    return PubSubConfigResponse(
      topic: map['topic'] as String,
    );
  }
}
