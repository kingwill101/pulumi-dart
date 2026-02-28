/// Optional. What type of media is the content (ie "audio").
enum GoogleCloudDialogflowV2IntentMessageMediaContentMediaType {
  responseMediaTypeUnspecified("RESPONSE_MEDIA_TYPE_UNSPECIFIED"),
  audio("AUDIO");

  const GoogleCloudDialogflowV2IntentMessageMediaContentMediaType(this.value);
  final String value;

  static GoogleCloudDialogflowV2IntentMessageMediaContentMediaType fromValue(
      String value) {
    for (final item
        in GoogleCloudDialogflowV2IntentMessageMediaContentMediaType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowV2IntentMessageMediaContentMediaType value: $value');
  }
}
