/// Accelerator manufacturers supported by Azure VMs.
enum AcceleratorManufacturer {
  aMD("AMD"),
  nvidia("Nvidia"),
  xilinx("Xilinx");

  const AcceleratorManufacturer(this.value);
  final String value;

  static AcceleratorManufacturer fromValue(String value) {
    for (final item in AcceleratorManufacturer.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorManufacturer value: $value');
  }
}

