/// SQL server license.
enum SqlServerLicense {
  unknown("Unknown"),
  yes("Yes"),
  no("No");

  const SqlServerLicense(this.value);
  final String value;

  static SqlServerLicense fromValue(String value) {
    for (final item in SqlServerLicense.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SqlServerLicense value: $value');
  }
}

