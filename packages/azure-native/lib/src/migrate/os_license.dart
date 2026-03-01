/// Gets or sets user configurable setting to display the azure hybrid use benefit.
enum OsLicense {
  unknown("Unknown"),
  yes("Yes"),
  no("No");

  const OsLicense(this.value);
  final String value;

  static OsLicense fromValue(String value) {
    for (final item in OsLicense.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsLicense value: $value');
  }
}

