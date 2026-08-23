/// HyperVGenerations supported by Azure VMs.
enum HyperVGeneration {
  gen1("Gen1"),
  gen2("Gen2");

  const HyperVGeneration(this.wireValue);
  final String wireValue;

  static HyperVGeneration fromValue(String value) {
    for (final item in HyperVGeneration.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HyperVGeneration value: $value');
  }
}
