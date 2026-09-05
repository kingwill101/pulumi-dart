// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_contributor_insight_rule_contributor_insight_rule_args_doc}
/// The set of arguments for ContributorInsightRule.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_contributor_insight_rule_contributor_insight_rule_args_doc}
class ContributorInsightRuleArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Definition of the rule, as a JSON object. For details on the valid syntax, see [Contributor Insights Rule Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).
  final pulumi.Input<String> ruleDefinition;
  /// Unique name of the rule.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> ruleName;
  /// State of the rule. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String?>? ruleState;
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [ContributorInsightRuleArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleDefinition] Definition of the rule, as a JSON object. For details on the valid syntax, see [Contributor Insights Rule Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).
  /// [ruleName] Unique name of the rule.
  /// [ruleState] State of the rule. Valid values are `ENABLED` and `DISABLED`.
  /// [tags] Optional.
  const ContributorInsightRuleArgs({
    this.region,
    required this.ruleDefinition,
    required this.ruleName,
    this.ruleState,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'ruleDefinition': ruleDefinition,
      'ruleName': ruleName,
      'ruleState': ?ruleState,
      'tags': ?tags,
    };
  }

  factory ContributorInsightRuleArgs.fromMap(Map<String, dynamic> map) {
    return ContributorInsightRuleArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleDefinition: pulumi.Input.fromValue(map['ruleDefinition'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      ruleState: (() { final guardedValue = map['ruleState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
