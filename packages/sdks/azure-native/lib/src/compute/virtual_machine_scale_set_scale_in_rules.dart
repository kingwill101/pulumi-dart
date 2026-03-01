enum VirtualMachineScaleSetScaleInRules {
  default_("Default"),
  oldestVM("OldestVM"),
  newestVM("NewestVM");

  const VirtualMachineScaleSetScaleInRules(this.value);
  final String value;

  static VirtualMachineScaleSetScaleInRules fromValue(String value) {
    for (final item in VirtualMachineScaleSetScaleInRules.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineScaleSetScaleInRules value: $value');
  }
}

