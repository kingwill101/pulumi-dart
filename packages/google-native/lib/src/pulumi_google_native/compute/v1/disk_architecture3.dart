/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum DiskArchitecture3 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const DiskArchitecture3(this.value);
  final String value;

  static DiskArchitecture3 fromValue(String value) {
    for (final item in DiskArchitecture3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskArchitecture3 value: $value');
  }
}
