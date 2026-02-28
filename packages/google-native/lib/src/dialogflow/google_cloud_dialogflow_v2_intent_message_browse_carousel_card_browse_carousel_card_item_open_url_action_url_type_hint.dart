/// Optional. Specifies the type of viewer that is used when opening the URL. Defaults to opening via web browser.
enum GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionUrlTypeHint {
  urlTypeHintUnspecified("URL_TYPE_HINT_UNSPECIFIED"),
  ampAction("AMP_ACTION"),
  ampContent("AMP_CONTENT");

  const GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionUrlTypeHint(
      this.value);
  final String value;

  static GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionUrlTypeHint
      fromValue(String value) {
    for (final item
        in GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionUrlTypeHint
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlActionUrlTypeHint value: $value');
  }
}
