import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the product type of the license.
enum LicenseProfileProductType implements pulumi.PulumiEnum<String> {
  valueWindowsServer("WindowsServer"),
  valueWindowsIoTEnterprise("WindowsIoTEnterprise");

  const LicenseProfileProductType(this.wireValue);
  @override
  final String wireValue;

  static LicenseProfileProductType fromValue(String value) {
    for (final item in LicenseProfileProductType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseProfileProductType value: $value');
  }
}
