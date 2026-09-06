import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of Agent Pool.
enum AgentPoolType implements pulumi.PulumiEnum<String> {
  valueVirtualMachineScaleSets("VirtualMachineScaleSets"),
  valueAvailabilitySet("AvailabilitySet"),
  valueVirtualMachines("VirtualMachines");

  const AgentPoolType(this.wireValue);
  @override
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
