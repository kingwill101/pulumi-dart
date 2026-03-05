/// Scope at which the operator will be installed.
enum OperatorScopeType {
  valueCluster("cluster"),
  valueNamespace("namespace");

  const OperatorScopeType(this.wireValue);
  final String wireValue;

  static OperatorScopeType fromValue(String value) {
    for (final item in OperatorScopeType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OperatorScopeType value: $value');
  }
}

