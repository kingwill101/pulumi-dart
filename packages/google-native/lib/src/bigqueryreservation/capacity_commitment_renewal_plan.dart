/// The plan this capacity commitment is converted to after commitment_end_time passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for ANNUAL and TRIAL commitments.
enum CapacityCommitmentRenewalPlan {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  flex("FLEX"),
  flexFlatRate("FLEX_FLAT_RATE"),
  trial("TRIAL"),
  monthly("MONTHLY"),
  monthlyFlatRate("MONTHLY_FLAT_RATE"),
  annual("ANNUAL"),
  annualFlatRate("ANNUAL_FLAT_RATE"),
  threeYear("THREE_YEAR"),
  none("NONE");

  const CapacityCommitmentRenewalPlan(this.value);
  final String value;

  static CapacityCommitmentRenewalPlan fromValue(String value) {
    for (final item in CapacityCommitmentRenewalPlan.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CapacityCommitmentRenewalPlan value: $value');
  }
}

