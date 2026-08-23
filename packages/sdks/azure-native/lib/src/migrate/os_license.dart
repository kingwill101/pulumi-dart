/// Gets or sets user configurable setting to display the azure hybrid use benefit.
enum OsLicense {
  unknown("Unknown"),
  yes("Yes"),
  no("No");

  const OsLicense(this.wireValue);
  final String wireValue;

  static OsLicense fromValue(String value) {
    for (final item in OsLicense.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OsLicense value: $value');
  }
}
