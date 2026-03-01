/// The type of Agent Pool.
enum AgentPoolType {
  valueVirtualMachineScaleSets("VirtualMachineScaleSets"),
  valueAvailabilitySet("AvailabilitySet"),
  valueVirtualMachines("VirtualMachines");

  const AgentPoolType(this.value);
  final String value;

  static AgentPoolType fromValue(String value) {
    for (final item in AgentPoolType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentPoolType value: $value');
  }
}

