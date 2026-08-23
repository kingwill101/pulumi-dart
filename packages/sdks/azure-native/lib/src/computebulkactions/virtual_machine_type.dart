/// Specifies the type of Virtual Machine.
enum VirtualMachineType {
  regular("Regular"),
  spot("Spot");

  const VirtualMachineType(this.wireValue);
  final String wireValue;

  static VirtualMachineType fromValue(String value) {
    for (final item in VirtualMachineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineType value: $value');
  }
}
