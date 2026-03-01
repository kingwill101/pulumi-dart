// ignore_for_file: unused_element, unnecessary_cast

/// Represents the action responsible for publishing messages to a Pub/Sub topic.
class GoogleCloudContentwarehouseV1PublishAction {
  /// Messages to be published.
  final List<String>? messages;

  /// The topic id in the Pub/Sub service for which messages will be published to.
  final String? topicId;

  /// Creates a new [GoogleCloudContentwarehouseV1PublishAction].
  /// [messages] Messages to be published.
  /// [topicId] The topic id in the Pub/Sub service for which messages will be published to.
  GoogleCloudContentwarehouseV1PublishAction({this.messages, this.topicId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'messages': ?messages, 'topicId': ?topicId};
  }

  factory GoogleCloudContentwarehouseV1PublishAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1PublishAction(
      messages: map['messages'] == null
          ? null
          : (map['messages'] as List).cast<String>(),
      topicId: map['topicId'] == null ? null : map['topicId'] as String,
    );
  }
}
