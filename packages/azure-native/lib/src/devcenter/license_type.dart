/// Specifies the license type indicating the caller has already acquired licenses for the Dev Boxes that will be created.
enum LicenseType {
  valueWindowsClient("Windows_Client");

  const LicenseType(this.value);
  final String value;

  static LicenseType fromValue(String value) {
    for (final item in LicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseType value: $value');
  }
}

