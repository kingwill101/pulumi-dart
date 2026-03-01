/// An value that determines where the API Version identifier will be located in a HTTP request.
enum VersioningScheme {
  valueSegment("Segment"),
  valueQuery("Query"),
  valueHeader("Header");

  const VersioningScheme(this.value);
  final String value;

  static VersioningScheme fromValue(String value) {
    for (final item in VersioningScheme.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersioningScheme value: $value');
  }
}

