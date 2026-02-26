/// Distinguish between sentinel MIN/MAX versions and normal versions. If kind is not NORMAL, then the other fields are ignored.
enum VersionKind2 {
  normal("NORMAL"),
  minimum("MINIMUM"),
  maximum("MAXIMUM");

  const VersionKind2(this.value);
  final String value;

  static VersionKind2 fromValue(String value) {
    for (final item in VersionKind2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionKind2 value: $value');
  }
}
