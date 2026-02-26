// ignore_for_file: unused_element, unnecessary_cast

class OrganizationFeedFeedOutputConfigPubsubDestination {
  /// Destination on Cloud Pubsub topic.
  final String topic;

  OrganizationFeedFeedOutputConfigPubsubDestination({
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topic'] = topic;
    return map;
  }

  factory OrganizationFeedFeedOutputConfigPubsubDestination.fromMap(
      Map<String, dynamic> map) {
    return OrganizationFeedFeedOutputConfigPubsubDestination(
      topic: map['topic'] as String,
    );
  }
}
