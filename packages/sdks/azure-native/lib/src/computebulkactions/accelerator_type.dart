/// Accelerator types supported by Azure VMs.
enum AcceleratorType {
  gPU("GPU"),
  fPGA("FPGA");

  const AcceleratorType(this.wireValue);
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
