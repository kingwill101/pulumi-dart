/// Defined in CVSS v3
enum CVSSScopeContaineranalysisV1alpha1 {
  scopeUnspecified("SCOPE_UNSPECIFIED"),
  scopeUnchanged("SCOPE_UNCHANGED"),
  scopeChanged("SCOPE_CHANGED");

  const CVSSScopeContaineranalysisV1alpha1(this.value);
  final String value;

  static CVSSScopeContaineranalysisV1alpha1 fromValue(String value) {
    for (final item in CVSSScopeContaineranalysisV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CVSSScopeContaineranalysisV1alpha1 value: $value');
  }
}
