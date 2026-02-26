enum CVSSv3Scope2 {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSv3Scope2(this.value);
  final String value;

  static CVSSv3Scope2 fromValue(String value) {
    for (final item in CVSSv3Scope2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CVSSv3Scope2 value: $value');
  }
}
