/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum DiskArchitectureComputeV1 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const DiskArchitectureComputeV1(this.value);
  final String value;

  static DiskArchitectureComputeV1 fromValue(String value) {
    for (final item in DiskArchitectureComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskArchitectureComputeV1 value: $value');
  }
}
