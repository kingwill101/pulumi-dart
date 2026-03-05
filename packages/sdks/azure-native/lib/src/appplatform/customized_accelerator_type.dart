/// Type of the customized accelerator.
enum CustomizedAcceleratorType {
  valueAccelerator("Accelerator"),
  valueFragment("Fragment");

  const CustomizedAcceleratorType(this.wireValue);
  final String wireValue;

  static CustomizedAcceleratorType fromValue(String value) {
    for (final item in CustomizedAcceleratorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CustomizedAcceleratorType value: $value');
  }
}

