/// Operator used in the filtering condition.
enum ConditionOperator {
  equal("eq"),
  notEqual("ne"),
  lessThan("lt"),
  lessThanOrEqual("lte"),
  greaterThan("gt"),
  greaterThanOrEqual("gte"),
  in_("in"),
  notIn("notin"),
  startsWith("startswith"),
  notStartsWith("notstartswith"),
  contains("contains"),
  notContains("notcontains");

  const ConditionOperator(this.wireValue);
  final String wireValue;

  static ConditionOperator fromValue(String value) {
    for (final item in ConditionOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOperator value: $value');
  }
}
