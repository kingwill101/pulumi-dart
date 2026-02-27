// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_contributor_managed_insight_rules_managed_rule_rule_state/get_contributor_managed_insight_rules_managed_rule_rule_state.dart';

class GetContributorManagedInsightRulesManagedRule {
  /// ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  final String resourceArn;

  /// Describes the state of a managed rule. If the rule is enabled, it contains information about the Contributor Insights rule that contains information about the related Amazon Web Services resource. See `rule_state reference` below for details.
  final List<GetContributorManagedInsightRulesManagedRuleRuleState> ruleStates;

  /// Template name for the managed rule. Used to enable managed rules using `PutManagedInsightRules`.
  final String templateName;

  GetContributorManagedInsightRulesManagedRule({
    required this.resourceArn,
    required this.ruleStates,
    required this.templateName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceArn'] = resourceArn;
    map['ruleStates'] = Input.encodeList<
        GetContributorManagedInsightRulesManagedRuleRuleState,
        Map<String, dynamic>>(ruleStates, (value) => value.toMap());
    map['templateName'] = templateName;
    return map;
  }

  factory GetContributorManagedInsightRulesManagedRule.fromMap(
      Map<String, dynamic> map) {
    return GetContributorManagedInsightRulesManagedRule(
      resourceArn: map['resourceArn'] as String,
      ruleStates: Input.decodeList<
              GetContributorManagedInsightRulesManagedRuleRuleState>(
          map['ruleStates'],
          (value) =>
              GetContributorManagedInsightRulesManagedRuleRuleState.fromMap(
                  (value as Map).cast<String, dynamic>())),
      templateName: map['templateName'] as String,
    );
  }
}
