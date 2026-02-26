/// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL commitments.
enum CapacityCommitmentRenewalPlan2 {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  flex("FLEX"),
  trial("TRIAL"),
  monthly("MONTHLY"),
  annual("ANNUAL");

  const CapacityCommitmentRenewalPlan2(this.value);
  final String value;

  static CapacityCommitmentRenewalPlan2 fromValue(String value) {
    for (final item in CapacityCommitmentRenewalPlan2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityCommitmentRenewalPlan2 value: $value');
  }
}
