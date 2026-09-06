import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the license resource.
enum LicenseType implements pulumi.PulumiEnum<String> {
  valueESU("ESU");

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
