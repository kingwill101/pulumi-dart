/// Optional. The type of the layout element that is being referenced if any.
enum GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType {
  layoutTypeUnspecified("LAYOUT_TYPE_UNSPECIFIED"),
  block("BLOCK"),
  paragraph("PARAGRAPH"),
  line("LINE"),
  token("TOKEN"),
  visualElement("VISUAL_ELEMENT"),
  table("TABLE"),
  formField("FORM_FIELD");

  const GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType(this.value);
  final String value;

  static GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType fromValue(
      String value) {
    for (final item
        in GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDocumentaiV1DocumentPageAnchorPageRefLayoutType value: $value');
  }
}
