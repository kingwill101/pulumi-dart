/// Deprecated. This field is unused.
enum FolderSinkOutputVersionFormat {
  versionFormatUnspecified("VERSION_FORMAT_UNSPECIFIED"),
  v2("V2"),
  v1("V1");

  const FolderSinkOutputVersionFormat(this.value);
  final String value;

  static FolderSinkOutputVersionFormat fromValue(String value) {
    for (final item in FolderSinkOutputVersionFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FolderSinkOutputVersionFormat value: $value');
  }
}

