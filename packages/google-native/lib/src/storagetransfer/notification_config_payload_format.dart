/// Required. The desired format of the notification message payloads.
enum NotificationConfigPayloadFormat {
  payloadFormatUnspecified("PAYLOAD_FORMAT_UNSPECIFIED"),
  none("NONE"),
  json("JSON");

  const NotificationConfigPayloadFormat(this.value);
  final String value;

  static NotificationConfigPayloadFormat fromValue(String value) {
    for (final item in NotificationConfigPayloadFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NotificationConfigPayloadFormat value: $value');
  }
}

