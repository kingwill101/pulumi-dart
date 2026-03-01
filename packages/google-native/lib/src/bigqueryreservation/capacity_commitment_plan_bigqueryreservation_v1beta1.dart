/// Capacity commitment commitment plan.
enum CapacityCommitmentPlanBigqueryreservationV1beta1 {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  flex("FLEX"),
  trial("TRIAL"),
  monthly("MONTHLY"),
  annual("ANNUAL");

  const CapacityCommitmentPlanBigqueryreservationV1beta1(this.value);
  final String value;

  static CapacityCommitmentPlanBigqueryreservationV1beta1 fromValue(
    String value,
  ) {
    for (final item
        in CapacityCommitmentPlanBigqueryreservationV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CapacityCommitmentPlanBigqueryreservationV1beta1 value: $value',
    );
  }
}
