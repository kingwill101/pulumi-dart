// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for publishing messages to a Pub/Sub topic.
class GoogleCloudContentwarehouseV1PublishActionResponse {
  /// Messages to be published.
  final List<String> messages;

  /// The topic id in the Pub/Sub service for which messages will be published to.
  final String topicId;

  /// Creates a new [GoogleCloudContentwarehouseV1PublishActionResponse].
  /// [messages] Messages to be published.
  /// [topicId] The topic id in the Pub/Sub service for which messages will be published to.
  GoogleCloudContentwarehouseV1PublishActionResponse({
    required this.messages,
    required this.topicId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'messages': messages, 'topicId': topicId};
  }

  factory GoogleCloudContentwarehouseV1PublishActionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1PublishActionResponse(
      messages: (map['messages'] as List).cast<String>(),
      topicId: map['topicId'] as String,
    );
  }
}
