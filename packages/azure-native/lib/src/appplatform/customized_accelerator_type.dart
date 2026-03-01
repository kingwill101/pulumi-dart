/// Type of the customized accelerator.
enum CustomizedAcceleratorType {
  valueAccelerator("Accelerator"),
  valueFragment("Fragment");

  const CustomizedAcceleratorType(this.value);
  final String value;

  static CustomizedAcceleratorType fromValue(String value) {
    for (final item in CustomizedAcceleratorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomizedAcceleratorType value: $value');
  }
}

