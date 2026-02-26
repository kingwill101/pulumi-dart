/// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
enum SoleTenancyPreferencesCommitmentPlan {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  commitment1Year("COMMITMENT_1_YEAR"),
  commitment3Year("COMMITMENT_3_YEAR");

  const SoleTenancyPreferencesCommitmentPlan(this.value);
  final String value;

  static SoleTenancyPreferencesCommitmentPlan fromValue(String value) {
    for (final item in SoleTenancyPreferencesCommitmentPlan.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SoleTenancyPreferencesCommitmentPlan value: $value');
  }
}
