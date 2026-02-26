/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum RegionDiskArchitecture3 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const RegionDiskArchitecture3(this.value);
  final String value;

  static RegionDiskArchitecture3 fromValue(String value) {
    for (final item in RegionDiskArchitecture3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskArchitecture3 value: $value');
  }
}
