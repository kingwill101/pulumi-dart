/// An operator to apply the subject with.
enum ConditionOpGameservicesV1 {
  noOp("NO_OP"),
  equals("EQUALS"),
  notEquals("NOT_EQUALS"),
  in_("IN"),
  notIn("NOT_IN"),
  discharged("DISCHARGED");

  const ConditionOpGameservicesV1(this.value);
  final String value;

  static ConditionOpGameservicesV1 fromValue(String value) {
    for (final item in ConditionOpGameservicesV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConditionOpGameservicesV1 value: $value');
  }
}
