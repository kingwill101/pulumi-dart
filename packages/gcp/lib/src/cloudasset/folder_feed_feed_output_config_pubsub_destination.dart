// ignore_for_file: unused_element, unnecessary_cast


class FolderFeedFeedOutputConfigPubsubDestination {
  /// Destination on Cloud Pubsub topic.
  final String topic;

  /// Creates a new [FolderFeedFeedOutputConfigPubsubDestination].
  /// [topic] Destination on Cloud Pubsub topic.
  FolderFeedFeedOutputConfigPubsubDestination({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': topic,
    };
  }

  factory FolderFeedFeedOutputConfigPubsubDestination.fromMap(Map<String, dynamic> map) {
    return FolderFeedFeedOutputConfigPubsubDestination(
      topic: map['topic'] as String,
    );
  }
}

