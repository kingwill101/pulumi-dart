/// LicenseType - The licenseType to use for Windows VMs. Windows_Server is used to enable Azure Hybrid User Benefits for Windows VMs. Possible values include: 'None', 'Windows_Server'
enum LicenseType {
  valueWindowsServer("Windows_Server"),
  valueNone("None");

  const LicenseType(this.wireValue);
  final String wireValue;

  static LicenseType fromValue(String value) {
    for (final item in LicenseType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseType value: $value');
  }
}
