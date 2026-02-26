/// The operator to use for the node resources specified in the `values` parameter.
enum SchedulingNodeAffinityOperator5 {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const SchedulingNodeAffinityOperator5(this.value);
  final String value;

  static SchedulingNodeAffinityOperator5 fromValue(String value) {
    for (final item in SchedulingNodeAffinityOperator5.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SchedulingNodeAffinityOperator5 value: $value');
  }
}
