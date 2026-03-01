/// Indicates the product type of the license.
enum LicenseProfileProductType {
  valueWindowsServer("WindowsServer"),
  valueWindowsIoTEnterprise("WindowsIoTEnterprise");

  const LicenseProfileProductType(this.value);
  final String value;

  static LicenseProfileProductType fromValue(String value) {
    for (final item in LicenseProfileProductType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseProfileProductType value: $value');
  }
}

