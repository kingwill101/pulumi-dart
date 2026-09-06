import 'package:pulumi/pulumi.dart' as pulumi;

/// Cpu Manufacturers  supported by Azure VMs.
enum CpuManufacturer implements pulumi.PulumiEnum<String> {
  intel("Intel"),
  aMD("AMD"),
  microsoft("Microsoft"),
  ampere("Ampere");

  const CpuManufacturer(this.wireValue);
  @override
  final String wireValue;

  static CpuManufacturer fromValue(String value) {
    for (final item in CpuManufacturer.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CpuManufacturer value: $value');
  }
}
