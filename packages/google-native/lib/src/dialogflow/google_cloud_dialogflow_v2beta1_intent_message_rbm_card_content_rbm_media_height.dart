/// Required for cards with vertical orientation. The height of the media within a rich card with a vertical layout. For a standalone card with horizontal layout, height is not customizable, and this field is ignored.
enum GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight {
  heightUnspecified("HEIGHT_UNSPECIFIED"),
  short("SHORT"),
  medium("MEDIUM"),
  tall("TALL");

  const GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight(
    this.value,
  );
  final String value;

  static GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight
  fromValue(String value) {
    for (final item
        in GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMediaHeight value: $value',
    );
  }
}
