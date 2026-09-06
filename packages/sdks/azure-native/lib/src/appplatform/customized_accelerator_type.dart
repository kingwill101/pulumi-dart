import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the customized accelerator.
enum CustomizedAcceleratorType implements pulumi.PulumiEnum<String> {
  valueAccelerator("Accelerator"),
  valueFragment("Fragment");

  const CustomizedAcceleratorType(this.wireValue);
  @override
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
