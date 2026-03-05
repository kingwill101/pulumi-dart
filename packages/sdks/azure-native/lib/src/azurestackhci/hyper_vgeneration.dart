/// The hypervisor generation of the Virtual Machine [V1, V2]
enum HyperVGeneration {
  v1("V1"),
  v2("V2");

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

