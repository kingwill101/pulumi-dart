/// The operator to use for the node resources specified in the `values` parameter.
enum SchedulingNodeAffinityOperatorVmmigrationV1alpha1 {
  operatorUnspecified("OPERATOR_UNSPECIFIED"),
  in_("IN"),
  notIn("NOT_IN");

  const SchedulingNodeAffinityOperatorVmmigrationV1alpha1(this.value);
  final String value;

  static SchedulingNodeAffinityOperatorVmmigrationV1alpha1 fromValue(
    String value,
  ) {
    for (final item
        in SchedulingNodeAffinityOperatorVmmigrationV1alpha1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SchedulingNodeAffinityOperatorVmmigrationV1alpha1 value: $value',
    );
  }
}
