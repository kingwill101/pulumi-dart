/// Type of the condition used.
enum RoutePolicyConditionType {
  valueOr("Or"),
  valueAnd("And");

  const RoutePolicyConditionType(this.wireValue);
  final String wireValue;

  static RoutePolicyConditionType fromValue(String value) {
    for (final item in RoutePolicyConditionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RoutePolicyConditionType value: $value');
  }
}
