/// Scope at which the operator will be installed.
enum OperatorScopeType {
  valueCluster("cluster"),
  valueNamespace("namespace");

  const OperatorScopeType(this.value);
  final String value;

  static OperatorScopeType fromValue(String value) {
    for (final item in OperatorScopeType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatorScopeType value: $value');
  }
}

