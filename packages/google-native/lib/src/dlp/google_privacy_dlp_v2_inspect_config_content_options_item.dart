enum GooglePrivacyDlpV2InspectConfigContentOptionsItem {
  contentUnspecified("CONTENT_UNSPECIFIED"),
  contentText("CONTENT_TEXT"),
  contentImage("CONTENT_IMAGE");

  const GooglePrivacyDlpV2InspectConfigContentOptionsItem(this.value);
  final String value;

  static GooglePrivacyDlpV2InspectConfigContentOptionsItem fromValue(
      String value) {
    for (final item
        in GooglePrivacyDlpV2InspectConfigContentOptionsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GooglePrivacyDlpV2InspectConfigContentOptionsItem value: $value');
  }
}
