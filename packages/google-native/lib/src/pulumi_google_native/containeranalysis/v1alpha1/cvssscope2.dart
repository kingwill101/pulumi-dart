/// Defined in CVSS v3
enum CVSSScope2 {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSScope2(this.value);
  final String value;

  static CVSSScope2 fromValue(String value) {
    for (final item in CVSSScope2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSScope2 value: $value');
  }
}
