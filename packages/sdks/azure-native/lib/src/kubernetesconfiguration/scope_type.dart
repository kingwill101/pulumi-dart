/// Scope at which the operator will be installed.
enum ScopeType {
  valueCluster("cluster"),
  valueNamespace("namespace");

  const ScopeType(this.wireValue);
  final String wireValue;

  static ScopeType fromValue(String value) {
    for (final item in ScopeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopeType value: $value');
  }
}
