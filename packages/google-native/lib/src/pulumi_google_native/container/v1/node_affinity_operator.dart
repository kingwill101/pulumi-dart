/// Operator for NodeAffinity.
enum NodeAffinityOperator {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const NodeAffinityOperator(this.value);
  final String value;

  static NodeAffinityOperator fromValue(String value) {
    for (final item in NodeAffinityOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeAffinityOperator value: $value');
  }
}
