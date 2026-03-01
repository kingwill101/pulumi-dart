/// The license type to use for Windows VMs. See [Azure Hybrid User Benefits](https://azure.microsoft.com/pricing/hybrid-benefit/faq/) for more details.
enum LicenseType {
  valueNone("None"),
  valueWindowsServer("Windows_Server");

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

