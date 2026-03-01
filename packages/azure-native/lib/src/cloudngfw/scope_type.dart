/// Rulestack Type
enum ScopeType {
  valueLOCAL("LOCAL"),
  valueGLOBAL("GLOBAL");

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

