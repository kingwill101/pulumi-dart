// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contributor_managed_insight_rules_managed_rule_rule_state.dart';

class GetContributorManagedInsightRulesManagedRule {
  /// ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  final pulumi.Input<String> resourceArn;

  /// Describes the state of a managed rule. If the rule is enabled, it contains information about the Contributor Insights rule that contains information about the related Amazon Web Services resource. See `rule_state reference` below for details.
  final pulumi.Input<
    List<GetContributorManagedInsightRulesManagedRuleRuleState>
  >
  ruleStates;

  /// Template name for the managed rule. Used to enable managed rules using `PutManagedInsightRules`.
  final pulumi.Input<String> templateName;

  /// Creates a new [GetContributorManagedInsightRulesManagedRule].
  /// [resourceArn] ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  /// [ruleStates] Describes the state of a managed rule. If the rule is enabled, it contains information about the Contributor Insights rule that contains information about the related Amazon Web Services resource. See `rule_state reference` below for details.
  /// [templateName] Template name for the managed rule. Used to enable managed rules using `PutManagedInsightRules`.
  GetContributorManagedInsightRulesManagedRule({
    required this.resourceArn,
    required this.ruleStates,
    required this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceArn': resourceArn,
      'ruleStates':
          pulumi.Input.mapInputValue<
            List<GetContributorManagedInsightRulesManagedRuleRuleState>,
            List<Map<String, dynamic>>
          >(
            ruleStates,
            (value) =>
                pulumi.Input.encodeList<
                  GetContributorManagedInsightRulesManagedRuleRuleState,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'templateName': templateName,
    };
  }

  factory GetContributorManagedInsightRulesManagedRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContributorManagedInsightRulesManagedRule(
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      ruleStates: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetContributorManagedInsightRulesManagedRuleRuleState
        >(
          map['ruleStates']!,
          (value) =>
              GetContributorManagedInsightRulesManagedRuleRuleState.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
    );
  }
}
