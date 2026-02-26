/// Defined in CVSS v3
enum CVSSPrivilegesRequired3 {
  privilegesRequiredUnspecified("PRIVILEGES_REQUIRED_UNSPECIFIED"),
  privilegesRequiredNone("PRIVILEGES_REQUIRED_NONE"),
  privilegesRequiredLow("PRIVILEGES_REQUIRED_LOW"),
  privilegesRequiredHigh("PRIVILEGES_REQUIRED_HIGH");

  const CVSSPrivilegesRequired3(this.value);
  final String value;

  static CVSSPrivilegesRequired3 fromValue(String value) {
    for (final item in CVSSPrivilegesRequired3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSPrivilegesRequired3 value: $value');
  }
}
