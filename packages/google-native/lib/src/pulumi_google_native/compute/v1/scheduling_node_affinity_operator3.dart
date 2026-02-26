/// Defines the operation of node selection. Valid operators are IN for affinity and NOT_IN for anti-affinity.
enum SchedulingNodeAffinityOperator3 {
  in_("IN"),
  notIn("NOT_IN"),
  operatorUnspecified("OPERATOR_UNSPECIFIED");

  const SchedulingNodeAffinityOperator3(this.value);
  final String value;

  static SchedulingNodeAffinityOperator3 fromValue(String value) {
    for (final item in SchedulingNodeAffinityOperator3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SchedulingNodeAffinityOperator3 value: $value');
  }
}
