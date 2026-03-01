/// Detected break type.
enum GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  space("SPACE"),
  wideSpace("WIDE_SPACE"),
  hyphen("HYPHEN");

  const GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType(this.value);
  final String value;

  static GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreakType value: $value',
    );
  }
}
