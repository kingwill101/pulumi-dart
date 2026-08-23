/// The type of Agent Pool.
enum AgentPoolType {
  valueVirtualMachineScaleSets("VirtualMachineScaleSets"),
  valueAvailabilitySet("AvailabilitySet"),
  valueVirtualMachines("VirtualMachines");

  const AgentPoolType(this.wireValue);
  final String wireValue;

  static AgentPoolType fromValue(String value) {
    for (final item in AgentPoolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AgentPoolType value: $value');
  }
}
