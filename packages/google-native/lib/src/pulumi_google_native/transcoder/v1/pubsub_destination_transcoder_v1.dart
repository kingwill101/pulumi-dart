// ignore_for_file: unused_element, unnecessary_cast

/// A Pub/Sub destination.
class PubsubDestinationTranscoderV1 {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.
  final String? topic;

  PubsubDestinationTranscoderV1({
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

  factory PubsubDestinationTranscoderV1.fromMap(Map<String, dynamic> map) {
    return PubsubDestinationTranscoderV1(
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
