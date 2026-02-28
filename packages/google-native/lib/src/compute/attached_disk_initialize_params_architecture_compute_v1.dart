/// The architecture of the attached disk. Valid values are arm64 or x86_64.
enum AttachedDiskInitializeParamsArchitectureComputeV1 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const AttachedDiskInitializeParamsArchitectureComputeV1(this.value);
  final String value;

  static AttachedDiskInitializeParamsArchitectureComputeV1 fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsArchitectureComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInitializeParamsArchitectureComputeV1 value: $value');
  }
}

