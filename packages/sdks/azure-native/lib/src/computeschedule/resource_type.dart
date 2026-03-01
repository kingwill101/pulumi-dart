/// The type of resource the scheduled action is targeting
enum ResourceType {
  virtualMachine("VirtualMachine"),
  virtualMachineScaleSet("VirtualMachineScaleSet");

  const ResourceType(this.value);
  final String value;

  static ResourceType fromValue(String value) {
    for (final item in ResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceType value: $value');
  }
}

