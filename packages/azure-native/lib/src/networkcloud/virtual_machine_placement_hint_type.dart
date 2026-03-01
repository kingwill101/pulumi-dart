/// The specification of whether this hint supports affinity or anti-affinity with the referenced resources.
enum VirtualMachinePlacementHintType {
  valueAffinity("Affinity"),
  valueAntiAffinity("AntiAffinity");

  const VirtualMachinePlacementHintType(this.value);
  final String value;

  static VirtualMachinePlacementHintType fromValue(String value) {
    for (final item in VirtualMachinePlacementHintType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachinePlacementHintType value: $value');
  }
}

