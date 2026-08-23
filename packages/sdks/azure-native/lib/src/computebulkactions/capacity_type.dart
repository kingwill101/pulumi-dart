/// Specifies capacity type for launching instances. It can be in terms of VMs or vCPUs.
enum CapacityType {
  vM("VM"),
  vCpu("VCpu");

  const CapacityType(this.wireValue);
  final String wireValue;

  static CapacityType fromValue(String value) {
    for (final item in CapacityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityType value: $value');
  }
}
