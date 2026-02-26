// ignore_for_file: unused_element, unnecessary_cast

/// A Pub/Sub destination.
class PubsubDestination2 {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.
  final String? topic;

  PubsubDestination2({
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

  factory PubsubDestination2.fromMap(Map<String, dynamic> map) {
    return PubsubDestination2(
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
