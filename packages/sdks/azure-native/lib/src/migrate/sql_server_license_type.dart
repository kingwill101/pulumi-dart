import 'package:pulumi/pulumi.dart' as pulumi;

/// SQL Server version.
enum SqlServerLicenseType implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  enterprise("Enterprise"),
  standard("Standard");

  const SqlServerLicenseType(this.wireValue);
  @override
  final String wireValue;

  static SqlServerLicenseType fromValue(String value) {
    for (final item in SqlServerLicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlServerLicenseType value: $value');
  }
}
