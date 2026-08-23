/// The type of resource the scheduled action is targeting
enum ResourceType {
  virtualMachine("VirtualMachine"),
  virtualMachineScaleSet("VirtualMachineScaleSet");

  const ResourceType(this.wireValue);
  final String wireValue;

  static ResourceType fromValue(String value) {
    for (final item in ResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceType value: $value');
  }
}
