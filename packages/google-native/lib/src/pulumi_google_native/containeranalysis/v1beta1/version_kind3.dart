/// Required. Distinguishes between sentinel MIN/MAX versions and normal versions.
enum VersionKind3 {
  versionKindUnspecified("VERSION_KIND_UNSPECIFIED"),
  normal("NORMAL"),
  minimum("MINIMUM"),
  maximum("MAXIMUM");

  const VersionKind3(this.value);
  final String value;

  static VersionKind3 fromValue(String value) {
    for (final item in VersionKind3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionKind3 value: $value');
  }
}
