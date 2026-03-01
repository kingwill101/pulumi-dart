/// The CPU architecture for which packages in this distribution channel were built. Architecture will be blank for language packages.
enum PackageArchitectureContaineranalysisV1beta1 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  x86("X86"),
  x64("X64");

  const PackageArchitectureContaineranalysisV1beta1(this.value);
  final String value;

  static PackageArchitectureContaineranalysisV1beta1 fromValue(String value) {
    for (final item in PackageArchitectureContaineranalysisV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PackageArchitectureContaineranalysisV1beta1 value: $value',
    );
  }
}
