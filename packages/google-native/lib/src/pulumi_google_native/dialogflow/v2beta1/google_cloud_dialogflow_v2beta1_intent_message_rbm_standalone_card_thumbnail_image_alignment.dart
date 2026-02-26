/// Required if orientation is horizontal. Image preview alignment for standalone cards with horizontal layout.
enum GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment {
  thumbnailImageAlignmentUnspecified("THUMBNAIL_IMAGE_ALIGNMENT_UNSPECIFIED"),
  left("LEFT"),
  right("RIGHT");

  const GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment(
      this.value);
  final String value;

  static GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment
      fromValue(String value) {
    for (final item
        in GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCardThumbnailImageAlignment value: $value');
  }
}
