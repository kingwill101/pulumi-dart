/// Type of the condition used.
enum RoutePolicyConditionType {
  valueOr("Or"),
  valueAnd("And");

  const RoutePolicyConditionType(this.value);
  final String value;

  static RoutePolicyConditionType fromValue(String value) {
    for (final item in RoutePolicyConditionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutePolicyConditionType value: $value');
  }
}

