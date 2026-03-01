/// Operator specifies the relationship between a cluster's observed value of the specified property and the values given in the requirement.
enum PropertySelectorOperator {
  gt("Gt"),
  ge("Ge"),
  eq("Eq"),
  ne("Ne"),
  lt("Lt"),
  le("Le");

  const PropertySelectorOperator(this.value);
  final String value;

  static PropertySelectorOperator fromValue(String value) {
    for (final item in PropertySelectorOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PropertySelectorOperator value: $value');
  }
}

