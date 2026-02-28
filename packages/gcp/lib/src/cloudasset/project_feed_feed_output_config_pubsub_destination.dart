// ignore_for_file: unused_element, unnecessary_cast

class ProjectFeedFeedOutputConfigPubsubDestination {
  /// Destination on Cloud Pubsub topic.
  final String topic;

  /// Creates a new [ProjectFeedFeedOutputConfigPubsubDestination].
  /// [topic] Destination on Cloud Pubsub topic.
  ProjectFeedFeedOutputConfigPubsubDestination({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topic'] = topic;
    return map;
  }

  factory ProjectFeedFeedOutputConfigPubsubDestination.fromMap(
      Map<String, dynamic> map) {
    return ProjectFeedFeedOutputConfigPubsubDestination(
      topic: map['topic'] as String,
    );
  }
}
