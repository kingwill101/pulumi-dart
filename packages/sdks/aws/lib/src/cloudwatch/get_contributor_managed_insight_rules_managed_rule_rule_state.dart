// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContributorManagedInsightRulesManagedRuleRuleState {
  /// Name of the Contributor Insights rule that contains data for the specified Amazon Web Services resource.
  final pulumi.Input<String> ruleName;
  /// Indicates whether the rule is enabled or disabled.
  final pulumi.Input<String> state;

  /// Creates a new [GetContributorManagedInsightRulesManagedRuleRuleState].
  /// [ruleName] Name of the Contributor Insights rule that contains data for the specified Amazon Web Services resource.
  /// [state] Indicates whether the rule is enabled or disabled.
  const GetContributorManagedInsightRulesManagedRuleRuleState({
    required this.ruleName,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ruleName': ruleName,
      'state': state,
    };
  }

  factory GetContributorManagedInsightRulesManagedRuleRuleState.fromMap(Map<String, dynamic> map) {
    return GetContributorManagedInsightRulesManagedRuleRuleState(
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
