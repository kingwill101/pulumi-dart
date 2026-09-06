import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of resource the scheduled action is targeting
enum ResourceType implements pulumi.PulumiEnum<String> {
  virtualMachine("VirtualMachine"),
  virtualMachineScaleSet("VirtualMachineScaleSet");

  const ResourceType(this.wireValue);
  @override
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
