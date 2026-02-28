// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileNewMessageEventNotificationConfig {
  /// Format of the message
  /// Possible values are: `MESSAGE_FORMAT_UNSPECIFIED`, `PROTO`, `JSON`.
  final String? messageFormat;

  /// Name of the Pub/Sub topic to publish conversation events
  final String? topic;

  /// Creates a new [ConversationProfileNewMessageEventNotificationConfig].
  /// [messageFormat] Format of the message
  /// [topic] Name of the Pub/Sub topic to publish conversation events
  ConversationProfileNewMessageEventNotificationConfig({
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

  factory ConversationProfileNewMessageEventNotificationConfig.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileNewMessageEventNotificationConfig(
      messageFormat:
          map['messageFormat'] == null ? null : map['messageFormat'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
