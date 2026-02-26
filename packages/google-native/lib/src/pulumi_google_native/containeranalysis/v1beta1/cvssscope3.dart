/// Defined in CVSS v3
enum CVSSScope3 {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSScope3(this.value);
  final String value;

  static CVSSScope3 fromValue(String value) {
    for (final item in CVSSScope3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSScope3 value: $value');
  }
}
