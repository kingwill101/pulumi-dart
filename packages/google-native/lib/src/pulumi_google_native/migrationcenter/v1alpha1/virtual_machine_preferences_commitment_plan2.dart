/// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
enum VirtualMachinePreferencesCommitmentPlan2 {
  commitmentPlanUnspecified("COMMITMENT_PLAN_UNSPECIFIED"),
  commitmentPlanNone("COMMITMENT_PLAN_NONE"),
  commitmentPlanOneYear("COMMITMENT_PLAN_ONE_YEAR"),
  commitmentPlanThreeYears("COMMITMENT_PLAN_THREE_YEARS");

  const VirtualMachinePreferencesCommitmentPlan2(this.value);
  final String value;

  static VirtualMachinePreferencesCommitmentPlan2 fromValue(String value) {
    for (final item in VirtualMachinePreferencesCommitmentPlan2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown VirtualMachinePreferencesCommitmentPlan2 value: $value');
  }
}
