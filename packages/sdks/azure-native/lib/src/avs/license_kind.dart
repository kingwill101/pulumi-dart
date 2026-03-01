/// License kind
enum LicenseKind {
  vmwareFirewall("VmwareFirewall");

  const LicenseKind(this.value);
  final String value;

  static LicenseKind fromValue(String value) {
    for (final item in LicenseKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LicenseKind value: $value');
  }
}

