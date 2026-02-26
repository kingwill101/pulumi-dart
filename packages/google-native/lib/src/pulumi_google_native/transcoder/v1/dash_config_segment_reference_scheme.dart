/// The segment reference scheme for a `DASH` manifest. The default is `SEGMENT_LIST`.
enum DashConfigSegmentReferenceScheme {
  segmentReferenceSchemeUnspecified("SEGMENT_REFERENCE_SCHEME_UNSPECIFIED"),
  segmentList("SEGMENT_LIST"),
  segmentTemplateNumber("SEGMENT_TEMPLATE_NUMBER");

  const DashConfigSegmentReferenceScheme(this.value);
  final String value;

  static DashConfigSegmentReferenceScheme fromValue(String value) {
    for (final item in DashConfigSegmentReferenceScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown DashConfigSegmentReferenceScheme value: $value');
  }
}
