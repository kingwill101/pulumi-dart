enum CVSSv3PrivilegesRequired2 {
  privilegesRequiredUnspecified("PRIVILEGES_REQUIRED_UNSPECIFIED"),
  privilegesRequiredNone("PRIVILEGES_REQUIRED_NONE"),
  privilegesRequiredLow("PRIVILEGES_REQUIRED_LOW"),
  privilegesRequiredHigh("PRIVILEGES_REQUIRED_HIGH");

  const CVSSv3PrivilegesRequired2(this.value);
  final String value;

  static CVSSv3PrivilegesRequired2 fromValue(String value) {
    for (final item in CVSSv3PrivilegesRequired2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3PrivilegesRequired2 value: $value');
  }
}
