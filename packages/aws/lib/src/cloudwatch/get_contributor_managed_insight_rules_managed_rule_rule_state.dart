// ignore_for_file: unused_element, unnecessary_cast

class GetContributorManagedInsightRulesManagedRuleRuleState {
  /// Name of the Contributor Insights rule that contains data for the specified Amazon Web Services resource.
  final String ruleName;

  /// Indicates whether the rule is enabled or disabled.
  final String state;

  /// Creates a new [GetContributorManagedInsightRulesManagedRuleRuleState].
  /// [ruleName] Name of the Contributor Insights rule that contains data for the specified Amazon Web Services resource.
  /// [state] Indicates whether the rule is enabled or disabled.
  GetContributorManagedInsightRulesManagedRuleRuleState({
    required this.ruleName,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ruleName'] = ruleName;
    map['state'] = state;
    return map;
  }

  factory GetContributorManagedInsightRulesManagedRuleRuleState.fromMap(
      Map<String, dynamic> map) {
    return GetContributorManagedInsightRulesManagedRuleRuleState(
      ruleName: map['ruleName'] as String,
      state: map['state'] as String,
    );
  }
}
