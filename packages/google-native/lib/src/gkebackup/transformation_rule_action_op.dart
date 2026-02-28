/// Required. op specifies the operation to perform.
enum TransformationRuleActionOp {
  opUnspecified("OP_UNSPECIFIED"),
  remove("REMOVE"),
  move("MOVE"),
  copy("COPY"),
  add("ADD"),
  test("TEST"),
  replace("REPLACE");

  const TransformationRuleActionOp(this.value);
  final String value;

  static TransformationRuleActionOp fromValue(String value) {
    for (final item in TransformationRuleActionOp.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransformationRuleActionOp value: $value');
  }
}

