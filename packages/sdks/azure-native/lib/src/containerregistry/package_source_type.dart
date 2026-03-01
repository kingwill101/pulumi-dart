/// The type of package source for a archive.
enum PackageSourceType {
  valueRemote("remote");

  const PackageSourceType(this.value);
  final String value;

  static PackageSourceType fromValue(String value) {
    for (final item in PackageSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageSourceType value: $value');
  }
}

