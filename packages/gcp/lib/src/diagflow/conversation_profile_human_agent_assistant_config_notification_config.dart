// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileHumanAgentAssistantConfigNotificationConfig {
  /// Format of the message
  /// Possible values are: `MESSAGE_FORMAT_UNSPECIFIED`, `PROTO`, `JSON`.
  final String? messageFormat;

  /// Name of the Pub/Sub topic to publish conversation events
  final String? topic;

  /// Creates a new [ConversationProfileHumanAgentAssistantConfigNotificationConfig].
  /// [messageFormat] Format of the message
  /// [topic] Name of the Pub/Sub topic to publish conversation events
  ConversationProfileHumanAgentAssistantConfigNotificationConfig({
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

  factory ConversationProfileHumanAgentAssistantConfigNotificationConfig.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileHumanAgentAssistantConfigNotificationConfig(
      messageFormat:
          map['messageFormat'] == null ? null : map['messageFormat'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
