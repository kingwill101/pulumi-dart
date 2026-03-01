/// Required. The width of the cards in the carousel.
enum GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth {
  cardWidthUnspecified("CARD_WIDTH_UNSPECIFIED"),
  small("SMALL"),
  medium("MEDIUM");

  const GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth(
    this.value,
  );
  final String value;

  static GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth
  fromValue(String value) {
    for (final item
        in GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCardCardWidth value: $value',
    );
  }
}
