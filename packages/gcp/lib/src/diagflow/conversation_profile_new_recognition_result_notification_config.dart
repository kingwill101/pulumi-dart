// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileNewRecognitionResultNotificationConfig {
  /// Format of message.
  /// Possible values are: `MESSAGE_FORMAT_UNSPECIFIED`, `PROTO`, `JSON`.
  final String? messageFormat;

  /// Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos.
  /// For telephony integration to receive notification, make sure either this topic is in the same project as the conversation or you grant service-<Conversation Project Number>@gcp-sa-dialogflow.iam.gserviceaccount.com the Dialogflow Service Agent role in the topic project.
  /// For chat integration to receive notification, make sure API caller has been granted the Dialogflow Service Agent role for the topic.
  /// Format: projects/<Project ID>/locations/<Location ID>/topics/<Topic ID>.
  final String? topic;

  /// Creates a new [ConversationProfileNewRecognitionResultNotificationConfig].
  /// [messageFormat] Format of message.
  /// [topic] Name of the Pub/Sub topic to publish conversation events like CONVERSATION_STARTED as serialized ConversationEvent protos.
  ConversationProfileNewRecognitionResultNotificationConfig({
    this.messageFormat,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final messageFormatValue = messageFormat;
    if (messageFormatValue != null) {
      map['messageFormat'] = messageFormatValue;
    }
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory ConversationProfileNewRecognitionResultNotificationConfig.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileNewRecognitionResultNotificationConfig(
      messageFormat:
          map['messageFormat'] == null ? null : map['messageFormat'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
