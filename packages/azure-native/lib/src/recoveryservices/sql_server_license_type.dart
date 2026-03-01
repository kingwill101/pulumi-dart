/// The SQL Server license type.
enum SqlServerLicenseType {
  valueNotSpecified("NotSpecified"),
  valueNoLicenseType("NoLicenseType"),
  valuePAYG("PAYG"),
  valueAHUB("AHUB");

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

