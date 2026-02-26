/// Operator for NodeAffinity.
enum NodeAffinityOperator2 {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const NodeAffinityOperator2(this.value);
  final String value;

  static NodeAffinityOperator2 fromValue(String value) {
    for (final item in NodeAffinityOperator2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeAffinityOperator2 value: $value');
  }
}
