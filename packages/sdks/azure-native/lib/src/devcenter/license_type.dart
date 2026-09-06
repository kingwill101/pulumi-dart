import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the license type indicating the caller has already acquired licenses for the Dev Boxes that will be created.
enum LicenseType implements pulumi.PulumiEnum<String> {
  valueWindowsClient("Windows_Client");

  const LicenseType(this.wireValue);
  @override
  final String wireValue;

  static LicenseType fromValue(String value) {
    for (final item in LicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseType value: $value');
  }
}
