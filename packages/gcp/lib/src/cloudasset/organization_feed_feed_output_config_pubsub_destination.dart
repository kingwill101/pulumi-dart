// ignore_for_file: unused_element, unnecessary_cast


class OrganizationFeedFeedOutputConfigPubsubDestination {
  /// Destination on Cloud Pubsub topic.
  final String topic;

  /// Creates a new [OrganizationFeedFeedOutputConfigPubsubDestination].
  /// [topic] Destination on Cloud Pubsub topic.
  OrganizationFeedFeedOutputConfigPubsubDestination({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': topic,
    };
  }

  factory OrganizationFeedFeedOutputConfigPubsubDestination.fromMap(Map<String, dynamic> map) {
    return OrganizationFeedFeedOutputConfigPubsubDestination(
      topic: map['topic'] as String,
    );
  }
}

