/// The CPU architecture for which packages in this distribution channel were built
enum DistributionArchitecture2 {
  architectureUnspecified("ARCHITECTURE_UNSPECIFIED"),
  x86("X86"),
  x64("X64");

  const DistributionArchitecture2(this.value);
  final String value;

  static DistributionArchitecture2 fromValue(String value) {
    for (final item in DistributionArchitecture2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DistributionArchitecture2 value: $value');
  }
}
