/// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
enum SoleTenancyPreferencesCommitmentPlan2 {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  commitment1Year("COMMITMENT_1_YEAR"),
  commitment3Year("COMMITMENT_3_YEAR");

  const SoleTenancyPreferencesCommitmentPlan2(this.value);
  final String value;

  static SoleTenancyPreferencesCommitmentPlan2 fromValue(String value) {
    for (final item in SoleTenancyPreferencesCommitmentPlan2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SoleTenancyPreferencesCommitmentPlan2 value: $value');
  }
}
