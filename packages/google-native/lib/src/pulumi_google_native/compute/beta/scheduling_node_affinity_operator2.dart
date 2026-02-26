/// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
enum SchedulingNodeAffinityOperator2 {
  in_("IN"),
  notIn("NOT_IN"),
  operatorUnspecified("OPERATOR_UNSPECIFIED");

  const SchedulingNodeAffinityOperator2(this.value);
  final String value;

  static SchedulingNodeAffinityOperator2 fromValue(String value) {
    for (final item in SchedulingNodeAffinityOperator2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SchedulingNodeAffinityOperator2 value: $value');
  }
}
