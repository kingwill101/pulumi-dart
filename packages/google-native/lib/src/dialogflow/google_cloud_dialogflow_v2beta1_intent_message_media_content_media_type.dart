/// Optional. What type of media is the content (ie "audio").
enum GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType {
  responseMediaTypeUnspecified("RESPONSE_MEDIA_TYPE_UNSPECIFIED"),
  audio("AUDIO");

  const GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType(
      this.value);
  final String value;

  static GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType
      fromValue(String value) {
    for (final item
        in GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowV2beta1IntentMessageMediaContentMediaType value: $value');
  }
}
