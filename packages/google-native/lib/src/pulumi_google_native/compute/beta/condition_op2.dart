/// This is deprecated and has no effect. Do not use.
enum ConditionOp2 {
  discharged("DISCHARGED"),
  equals("EQUALS"),
  in_("IN"),
  notEquals("NOT_EQUALS"),
  notIn("NOT_IN"),
  noOp("NO_OP");

  const ConditionOp2(this.value);
  final String value;

  static ConditionOp2 fromValue(String value) {
    for (final item in ConditionOp2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOp2 value: $value');
  }
}
