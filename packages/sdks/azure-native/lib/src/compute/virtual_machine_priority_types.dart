import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the priority for the virtual machines in the scale set. Minimum api-version: 2017-10-30-preview.
enum VirtualMachinePriorityTypes implements pulumi.PulumiEnum<String> {
  regular("Regular"),
  low("Low"),
  spot("Spot");

  const VirtualMachinePriorityTypes(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachinePriorityTypes fromValue(String value) {
    for (final item in VirtualMachinePriorityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachinePriorityTypes value: $value');
  }
}
