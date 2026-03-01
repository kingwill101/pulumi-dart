/// They inventory type.
enum InventoryType {
  valueResourcePool("ResourcePool"),
  valueVirtualMachine("VirtualMachine"),
  valueVirtualMachineTemplate("VirtualMachineTemplate"),
  valueVirtualNetwork("VirtualNetwork"),
  valueCluster("Cluster"),
  valueDatastore("Datastore"),
  valueHost("Host");

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

