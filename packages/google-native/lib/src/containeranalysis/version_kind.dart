/// Required. Distinguishes between sentinel MIN/MAX versions and normal versions.
enum VersionKind {
  versionKindUnspecified("VERSION_KIND_UNSPECIFIED"),
  normal("NORMAL"),
  minimum("MINIMUM"),
  maximum("MAXIMUM");

  const VersionKind(this.value);
  final String value;

  static VersionKind fromValue(String value) {
    for (final item in VersionKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionKind value: $value');
  }
}
