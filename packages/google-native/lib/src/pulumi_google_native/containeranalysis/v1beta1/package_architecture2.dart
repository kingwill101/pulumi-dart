/// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
enum PackageArchitecture2 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  x86("X86"),
  x64("X64");

  const PackageArchitecture2(this.value);
  final String value;

  static PackageArchitecture2 fromValue(String value) {
    for (final item in PackageArchitecture2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PackageArchitecture2 value: $value');
  }
}
