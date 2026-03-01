// ignore_for_file: unused_element, unnecessary_cast

class ProjectFeedFeedOutputConfigPubsubDestination {
  /// Destination on Cloud Pubsub topic.
  final String topic;

  /// Creates a new [ProjectFeedFeedOutputConfigPubsubDestination].
  /// [topic] Destination on Cloud Pubsub topic.
  ProjectFeedFeedOutputConfigPubsubDestination({required this.topic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topic': topic};
  }

  factory ProjectFeedFeedOutputConfigPubsubDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProjectFeedFeedOutputConfigPubsubDestination(
      topic: map['topic'] as String,
    );
  }
}
