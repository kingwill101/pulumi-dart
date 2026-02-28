/// Format of message.
enum GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat {
  messageFormatUnspecified("MESSAGE_FORMAT_UNSPECIFIED"),
  proto("PROTO"),
  json("JSON");

  const GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat(this.value);
  final String value;

  static GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat fromValue(
      String value) {
    for (final item
        in GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowV2beta1NotificationConfigMessageFormat value: $value');
  }
}
