/// Defined in CVSS v3
enum CVSSPrivilegesRequired2 {
  privilegesRequiredUnspecified("PRIVILEGES_REQUIRED_UNSPECIFIED"),
  privilegesRequiredNone("PRIVILEGES_REQUIRED_NONE"),
  privilegesRequiredLow("PRIVILEGES_REQUIRED_LOW"),
  privilegesRequiredHigh("PRIVILEGES_REQUIRED_HIGH");

  const CVSSPrivilegesRequired2(this.value);
  final String value;

  static CVSSPrivilegesRequired2 fromValue(String value) {
    for (final item in CVSSPrivilegesRequired2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSPrivilegesRequired2 value: $value');
  }
}
