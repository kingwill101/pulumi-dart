import 'package:pulumi/pulumi.dart' as pulumi;

enum VirtualMachineScaleSetScaleInRules implements pulumi.PulumiEnum<String> {
  default_("Default"),
  oldestVM("OldestVM"),
  newestVM("NewestVM");

  const VirtualMachineScaleSetScaleInRules(this.wireValue);
  @override
  final String wireValue;

  static VirtualMachineScaleSetScaleInRules fromValue(String value) {
    for (final item in VirtualMachineScaleSetScaleInRules.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineScaleSetScaleInRules value: $value');
  }
}
