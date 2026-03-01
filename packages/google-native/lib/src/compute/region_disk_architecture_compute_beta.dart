/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum RegionDiskArchitectureComputeBeta {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const RegionDiskArchitectureComputeBeta(this.value);
  final String value;

  static RegionDiskArchitectureComputeBeta fromValue(String value) {
    for (final item in RegionDiskArchitectureComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionDiskArchitectureComputeBeta value: $value',
    );
  }
}
