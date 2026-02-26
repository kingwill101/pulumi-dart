// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for publishing messages to a Pub/Sub topic.
class GoogleCloudContentwarehouseV1PublishAction {
  /// Messages to be published.
  final List<String>? messages;

  /// The topic id in the Pub/Sub service for which messages will be published to.
  final String? topicId;

  GoogleCloudContentwarehouseV1PublishAction({
    this.messages,
    this.topicId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messagesValue = messages;
    if (messagesValue != null) {
      map['messages'] = messagesValue;
    }
    final topicIdValue = topicId;
    if (topicIdValue != null) {
      map['topicId'] = topicIdValue;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1PublishAction.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PublishAction(
      messages: map['messages'] == null
          ? null
          : (map['messages'] as List).cast<String>(),
      topicId: map['topicId'] == null ? null : map['topicId'] as String,
    );
  }
}
