/// An operator to apply the subject with.
enum ConditionOp {
  noOp("NO_OP"),
  equals("EQUALS"),
  notEquals("NOT_EQUALS"),
  in_("IN"),
  notIn("NOT_IN"),
  discharged("DISCHARGED");

  const ConditionOp(this.value);
  final String value;

  static ConditionOp fromValue(String value) {
    for (final item in ConditionOp.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOp value: $value');
  }
}
