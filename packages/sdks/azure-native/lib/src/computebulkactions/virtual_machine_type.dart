import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of Virtual Machine.
enum VirtualMachineType implements pulumi.PulumiEnum<String> {
  regular("Regular"),
  spot("Spot");

  const VirtualMachineType(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachineType fromValue(String value) {
    for (final item in VirtualMachineType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineType value: $value');
  }
}
