/// Selects the boot method for the virtual machine.
enum VirtualMachineBootMethod {
  valueUEFI("UEFI"),
  valueBIOS("BIOS");

  const VirtualMachineBootMethod(this.value);
  final String value;

  static VirtualMachineBootMethod fromValue(String value) {
    for (final item in VirtualMachineBootMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineBootMethod value: $value');
  }
}

