// ignore_for_file: unused_element, unnecessary_cast

/// A Pub/Sub destination.
class PubsubDestinationResponse {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.
  final String topic;

  /// Creates a new [PubsubDestinationResponse].
  /// [topic] The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.
  PubsubDestinationResponse({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topic'] = topic;
    return map;
  }

  factory PubsubDestinationResponse.fromMap(Map<String, dynamic> map) {
    return PubsubDestinationResponse(
      topic: map['topic'] as String,
    );
  }
}
