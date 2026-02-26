/// The CPU architecture for which packages in this distribution channel were built.
enum DistributionArchitecture3 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  x86("X86"),
  x64("X64");

  const DistributionArchitecture3(this.value);
  final String value;

  static DistributionArchitecture3 fromValue(String value) {
    for (final item in DistributionArchitecture3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionArchitecture3 value: $value');
  }
}
