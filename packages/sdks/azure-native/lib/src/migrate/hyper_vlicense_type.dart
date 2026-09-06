import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperV licence type.
enum HyperVLicenseType implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  datacentre("Datacentre"),
  standard("Standard");

  const HyperVLicenseType(this.wireValue);
  @override
  final String wireValue;

  static HyperVLicenseType fromValue(String value) {
    for (final item in HyperVLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HyperVLicenseType value: $value');
  }
}
