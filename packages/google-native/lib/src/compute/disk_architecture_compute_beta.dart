/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum DiskArchitectureComputeBeta {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const DiskArchitectureComputeBeta(this.value);
  final String value;

  static DiskArchitectureComputeBeta fromValue(String value) {
    for (final item in DiskArchitectureComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskArchitectureComputeBeta value: $value');
  }
}
