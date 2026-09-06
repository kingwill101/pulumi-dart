import 'package:pulumi/pulumi.dart' as pulumi;

enum ChildConfigurationType implements pulumi.PulumiEnum<String> {
  deviceConfiguration("DeviceConfiguration"),
  additionalConfiguration("AdditionalConfiguration");

  const ChildConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static ChildConfigurationType fromValue(String value) {
    for (final item in ChildConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChildConfigurationType value: $value');
  }
}
