/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum RegionDiskArchitecture2 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const RegionDiskArchitecture2(this.value);
  final String value;

  static RegionDiskArchitecture2 fromValue(String value) {
    for (final item in RegionDiskArchitecture2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskArchitecture2 value: $value');
  }
}
