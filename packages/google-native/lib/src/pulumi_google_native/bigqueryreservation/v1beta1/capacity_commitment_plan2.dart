/// Capacity commitment commitment plan.
enum CapacityCommitmentPlan2 {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  flex("FLEX"),
  trial("TRIAL"),
  monthly("MONTHLY"),
  annual("ANNUAL");

  const CapacityCommitmentPlan2(this.value);
  final String value;

  static CapacityCommitmentPlan2 fromValue(String value) {
    for (final item in CapacityCommitmentPlan2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityCommitmentPlan2 value: $value');
  }
}
