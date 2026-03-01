/// The license type for Linux VM's.
enum LinuxLicenseType {
  valueNotSpecified("NotSpecified"),
  valueNoLicenseType("NoLicenseType"),
  valueLinuxServer("LinuxServer");

  const LinuxLicenseType(this.value);
  final String value;

  static LinuxLicenseType fromValue(String value) {
    for (final item in LinuxLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinuxLicenseType value: $value');
  }
}

