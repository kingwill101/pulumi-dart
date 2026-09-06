import 'package:pulumi/pulumi.dart' as pulumi;

/// Accelerator types supported by Azure VMs.
enum AcceleratorType implements pulumi.PulumiEnum<String> {
  gPU("GPU"),
  fPGA("FPGA");

  const AcceleratorType(this.wireValue);
  @override
  final String wireValue;

  static AcceleratorType fromValue(String value) {
    for (final item in AcceleratorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorType value: $value');
  }
}
