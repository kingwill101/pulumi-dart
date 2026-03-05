/// License kind
enum LicenseKind {
  vmwareFirewall("VmwareFirewall");

  const LicenseKind(this.wireValue);
  final String wireValue;

  static LicenseKind fromValue(String value) {
    for (final item in LicenseKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseKind value: $value');
  }
}

