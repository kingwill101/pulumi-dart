// ignore_for_file: unused_element, unnecessary_cast

class FolderFeedFeedOutputConfigPubsubDestination {
  /// Destination on Cloud Pubsub topic.
  final String topic;

  FolderFeedFeedOutputConfigPubsubDestination({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topic'] = topic;
    return map;
  }

  factory FolderFeedFeedOutputConfigPubsubDestination.fromMap(
      Map<String, dynamic> map) {
    return FolderFeedFeedOutputConfigPubsubDestination(
      topic: map['topic'] as String,
    );
  }
}
