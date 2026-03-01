/// The IP allocation mechanism for the virtual machine.
/// Dynamic and Static are only valid for l3Network which may also specify Disabled.
/// Otherwise, Disabled is the only permitted value.
enum VirtualMachineIPAllocationMethod {
  valueDynamic("Dynamic"),
  valueStatic("Static"),
  valueDisabled("Disabled");

  const VirtualMachineIPAllocationMethod(this.value);
  final String value;

  static VirtualMachineIPAllocationMethod fromValue(String value) {
    for (final item in VirtualMachineIPAllocationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineIPAllocationMethod value: $value');
  }
}

