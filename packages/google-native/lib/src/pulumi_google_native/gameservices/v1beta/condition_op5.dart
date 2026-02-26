/// An operator to apply the subject with.
enum ConditionOp5 {
  noOp("NO_OP"),
  equals("EQUALS"),
  notEquals("NOT_EQUALS"),
  in_("IN"),
  notIn("NOT_IN"),
  discharged("DISCHARGED");

  const ConditionOp5(this.value);
  final String value;

  static ConditionOp5 fromValue(String value) {
    for (final item in ConditionOp5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOp5 value: $value');
  }
}
