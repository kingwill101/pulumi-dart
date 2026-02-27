// ignore_for_file: unused_element, unnecessary_cast

/// A Pub/Sub destination.
class PubsubDestinationResponseTranscoderV1 {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.
  final String topic;

  PubsubDestinationResponseTranscoderV1({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topic'] = topic;
    return map;
  }

  factory PubsubDestinationResponseTranscoderV1.fromMap(
      Map<String, dynamic> map) {
    return PubsubDestinationResponseTranscoderV1(
      topic: map['topic'] as String,
    );
  }
}
