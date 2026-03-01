/// Describes the license target server.
enum LicenseTarget {
  valueWindowsServer2012("Windows Server 2012"),
  valueWindowsServer2012R2("Windows Server 2012 R2");

  const LicenseTarget(this.value);
  final String value;

  static LicenseTarget fromValue(String value) {
    for (final item in LicenseTarget.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseTarget value: $value');
  }
}

