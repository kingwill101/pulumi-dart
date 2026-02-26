/// This is deprecated and has no effect. Do not use.
enum ConditionOp3 {
  discharged("DISCHARGED"),
  equals("EQUALS"),
  in_("IN"),
  notEquals("NOT_EQUALS"),
  notIn("NOT_IN"),
  noOp("NO_OP");

  const ConditionOp3(this.value);
  final String value;

  static ConditionOp3 fromValue(String value) {
    for (final item in ConditionOp3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOp3 value: $value');
  }
}
