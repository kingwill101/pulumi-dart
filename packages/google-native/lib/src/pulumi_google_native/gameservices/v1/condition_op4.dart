/// An operator to apply the subject with.
enum ConditionOp4 {
  noOp("NO_OP"),
  equals("EQUALS"),
  notEquals("NOT_EQUALS"),
  in_("IN"),
  notIn("NOT_IN"),
  discharged("DISCHARGED");

  const ConditionOp4(this.value);
  final String value;

  static ConditionOp4 fromValue(String value) {
    for (final item in ConditionOp4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOp4 value: $value');
  }
}
