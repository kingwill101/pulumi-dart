/// Scope at which the operator will be installed.
enum ScopeType {
  valueCluster("cluster"),
  valueNamespace("namespace");

  const ScopeType(this.value);
  final String value;

  static ScopeType fromValue(String value) {
    for (final item in ScopeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScopeType value: $value');
  }
}

