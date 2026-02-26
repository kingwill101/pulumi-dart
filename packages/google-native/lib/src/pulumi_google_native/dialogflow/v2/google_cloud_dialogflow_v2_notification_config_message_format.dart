/// Format of message.
enum GoogleCloudDialogflowV2NotificationConfigMessageFormat {
  messageFormatUnspecified("MESSAGE_FORMAT_UNSPECIFIED"),
  proto("PROTO"),
  json("JSON");

  const GoogleCloudDialogflowV2NotificationConfigMessageFormat(this.value);
  final String value;

  static GoogleCloudDialogflowV2NotificationConfigMessageFormat fromValue(
      String value) {
    for (final item
        in GoogleCloudDialogflowV2NotificationConfigMessageFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowV2NotificationConfigMessageFormat value: $value');
  }
}
