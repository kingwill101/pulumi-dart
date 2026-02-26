// ignore_for_file: unused_element, unnecessary_cast

/// A Pub/Sub destination.
class PubsubDestinationResponse2 {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.
  final String topic;

  PubsubDestinationResponse2({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topic'] = topic;
    return map;
  }

  factory PubsubDestinationResponse2.fromMap(Map<String, dynamic> map) {
    return PubsubDestinationResponse2(
      topic: map['topic'] as String,
    );
  }
}
