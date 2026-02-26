/// The architecture of the attached disk. Valid values are arm64 or x86_64.
enum AttachedDiskInitializeParamsArchitecture3 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const AttachedDiskInitializeParamsArchitecture3(this.value);
  final String value;

  static AttachedDiskInitializeParamsArchitecture3 fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsArchitecture3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AttachedDiskInitializeParamsArchitecture3 value: $value');
  }
}
