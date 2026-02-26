// ignore_for_file: unused_element, unnecessary_cast

class ConversationProfileNotificationConfig {
  /// Format of the message
  /// Possible values are: `MESSAGE_FORMAT_UNSPECIFIED`, `PROTO`, `JSON`.
  final String? messageFormat;

  /// Name of the Pub/Sub topic to publish conversation events
  final String? topic;

  ConversationProfileNotificationConfig({
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

  factory ConversationProfileNotificationConfig.fromMap(
      Map<String, dynamic> map) {
    return ConversationProfileNotificationConfig(
      messageFormat:
          map['messageFormat'] == null ? null : map['messageFormat'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
