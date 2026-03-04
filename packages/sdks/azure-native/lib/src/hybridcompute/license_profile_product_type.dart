/// Indicates the product type of the license.
enum LicenseProfileProductType {
  valueWindowsServer("WindowsServer"),
  valueWindowsIoTEnterprise("WindowsIoTEnterprise");

  const LicenseProfileProductType(this.wireValue);
  final String wireValue;

  static LicenseProfileProductType fromValue(String value) {
    for (final item in LicenseProfileProductType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseProfileProductType value: $value');
  }
}
