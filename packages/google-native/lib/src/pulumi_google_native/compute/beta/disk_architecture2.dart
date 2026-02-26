/// The architecture of the disk. Valid values are ARM64 or X86_64.
enum DiskArchitecture2 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  arm64("ARM64"),
  x8664("X86_64");

  const DiskArchitecture2(this.value);
  final String value;

  static DiskArchitecture2 fromValue(String value) {
    for (final item in DiskArchitecture2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskArchitecture2 value: $value');
  }
}
