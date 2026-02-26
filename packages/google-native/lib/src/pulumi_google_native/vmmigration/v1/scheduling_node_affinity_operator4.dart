/// The operator to use for the node resources specified in the `values` parameter.
enum SchedulingNodeAffinityOperator4 {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const SchedulingNodeAffinityOperator4(this.value);
  final String value;

  static SchedulingNodeAffinityOperator4 fromValue(String value) {
    for (final item in SchedulingNodeAffinityOperator4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SchedulingNodeAffinityOperator4 value: $value');
  }
}
