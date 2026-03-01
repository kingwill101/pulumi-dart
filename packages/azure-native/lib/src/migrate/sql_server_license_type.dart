/// SQL Server version.
enum SqlServerLicenseType {
  unknown("Unknown"),
  enterprise("Enterprise"),
  standard("Standard");

  const SqlServerLicenseType(this.value);
  final String value;

  static SqlServerLicenseType fromValue(String value) {
    for (final item in SqlServerLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlServerLicenseType value: $value');
  }
}

