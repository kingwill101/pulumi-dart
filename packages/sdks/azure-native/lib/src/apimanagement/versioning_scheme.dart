/// An value that determines where the API Version identifier will be located in a HTTP request.
enum VersioningScheme {
  valueSegment("Segment"),
  valueQuery("Query"),
  valueHeader("Header");

  const VersioningScheme(this.wireValue);
  final String wireValue;

  static VersioningScheme fromValue(String value) {
    for (final item in VersioningScheme.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersioningScheme value: $value');
  }
}

