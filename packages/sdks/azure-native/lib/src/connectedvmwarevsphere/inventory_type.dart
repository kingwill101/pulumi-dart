/// They inventory type.
enum InventoryType {
  valueResourcePool("ResourcePool"),
  valueVirtualMachine("VirtualMachine"),
  valueVirtualMachineTemplate("VirtualMachineTemplate"),
  valueVirtualNetwork("VirtualNetwork"),
  valueCluster("Cluster"),
  valueDatastore("Datastore"),
  valueHost("Host");

  const InventoryType(this.wireValue);
  final String wireValue;

  static InventoryType fromValue(String value) {
    for (final item in InventoryType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InventoryType value: $value');
  }
}

