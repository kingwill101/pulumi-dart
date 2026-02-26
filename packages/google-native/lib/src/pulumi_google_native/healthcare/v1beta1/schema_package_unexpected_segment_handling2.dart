/// Determines how unexpected segments (segments not matched to the schema) are handled.
enum SchemaPackageUnexpectedSegmentHandling2 {
  unexpectedSegmentHandlingModeUnspecified(
      "UNEXPECTED_SEGMENT_HANDLING_MODE_UNSPECIFIED"),
  fail("FAIL"),
  skip("SKIP"),
  parse("PARSE");

  const SchemaPackageUnexpectedSegmentHandling2(this.value);
  final String value;

  static SchemaPackageUnexpectedSegmentHandling2 fromValue(String value) {
    for (final item in SchemaPackageUnexpectedSegmentHandling2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SchemaPackageUnexpectedSegmentHandling2 value: $value');
  }
}
