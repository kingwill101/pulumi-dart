/// Accelerator manufacturers supported by Azure VMs.
enum AcceleratorManufacturer {
  aMD("AMD"),
  nvidia("Nvidia"),
  xilinx("Xilinx");

  const AcceleratorManufacturer(this.wireValue);
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
