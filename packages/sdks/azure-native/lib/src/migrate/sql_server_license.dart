/// SQL server license.
enum SqlServerLicense {
  unknown("Unknown"),
  yes("Yes"),
  no("No");

  const SqlServerLicense(this.wireValue);
  final String wireValue;

  static SqlServerLicense fromValue(String value) {
    for (final item in SqlServerLicense.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlServerLicense value: $value');
  }
}
