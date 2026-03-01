/// Accelerator types supported by Azure VMs.
enum AcceleratorType {
  gPU("GPU"),
  fPGA("FPGA");

  const AcceleratorType(this.value);
  final String value;

  static AcceleratorType fromValue(String value) {
    for (final item in AcceleratorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorType value: $value');
  }
}

