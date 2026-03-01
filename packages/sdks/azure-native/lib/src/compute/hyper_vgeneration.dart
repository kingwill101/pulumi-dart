/// The hypervisor generation of the Virtual Machine. Applicable to OS disks only.
enum HyperVGeneration {
  v1("V1"),
  v2("V2");

  const HyperVGeneration(this.value);
  final String value;

  static HyperVGeneration fromValue(String value) {
    for (final item in HyperVGeneration.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HyperVGeneration value: $value');
  }
}

