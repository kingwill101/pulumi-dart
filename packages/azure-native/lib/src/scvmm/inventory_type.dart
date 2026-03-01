/// They inventory type.
enum InventoryType {
  valueCloud("Cloud"),
  valueVirtualNetwork("VirtualNetwork"),
  valueVirtualMachineTemplate("VirtualMachineTemplate"),
  valueVirtualMachine("VirtualMachine");

  const InventoryType(this.value);
  final String value;

  static InventoryType fromValue(String value) {
    for (final item in InventoryType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InventoryType value: $value');
  }
}

