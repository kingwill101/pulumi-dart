/// Deprecated. This field is unused.
enum SinkOutputVersionFormat {
  versionFormatUnspecified("VERSION_FORMAT_UNSPECIFIED"),
  v2("V2"),
  v1("V1");

  const SinkOutputVersionFormat(this.value);
  final String value;

  static SinkOutputVersionFormat fromValue(String value) {
    for (final item in SinkOutputVersionFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SinkOutputVersionFormat value: $value');
  }
}
