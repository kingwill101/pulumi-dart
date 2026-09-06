import 'package:pulumi/pulumi.dart' as pulumi;

/// Accelerator manufacturers supported by Azure VMs.
enum AcceleratorManufacturer implements pulumi.PulumiEnum<String> {
  aMD("AMD"),
  nvidia("Nvidia"),
  xilinx("Xilinx");

  const AcceleratorManufacturer(this.wireValue);
  @override
  final String wireValue;

  static AcceleratorManufacturer fromValue(String value) {
    for (final item in AcceleratorManufacturer.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorManufacturer value: $value');
  }
}
