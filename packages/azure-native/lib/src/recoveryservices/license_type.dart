/// The license type.
enum LicenseType {
  valueNotSpecified("NotSpecified"),
  valueNoLicenseType("NoLicenseType"),
  valueWindowsServer("WindowsServer");

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

