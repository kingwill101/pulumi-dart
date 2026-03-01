// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_contributor_insight_rule_contributor_insight_rule_args_doc}
/// The set of arguments for ContributorInsightRule.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_contributor_insight_rule_contributor_insight_rule_args_doc}
class ContributorInsightRuleArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Definition of the rule, as a JSON object. For details on the valid syntax, see [Contributor Insights Rule Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).
  final pulumi.Input<String> ruleDefinition;
  /// Unique name of the rule.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> ruleName;
  /// State of the rule. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? ruleState;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ContributorInsightRuleArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleDefinition] Definition of the rule, as a JSON object. For details on the valid syntax, see [Contributor Insights Rule Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).
  /// [ruleName] Unique name of the rule.
  /// [ruleState] State of the rule. Valid values are `ENABLED` and `DISABLED`.
  /// [tags] Optional.
  ContributorInsightRuleArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> ruleDefinition,
    required pulumi.Output<String> ruleName,
    pulumi.Output<String>? ruleState,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleDefinition = pulumi.Input.asInput<String>(ruleDefinition),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      ruleState = pulumi.Input.asOptionalInput<String>(ruleState),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleDefinition: pulumi.Output.create<String>(map['ruleDefinition'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      ruleState: map['ruleState'] == null ? null : pulumi.Output.create<String>(map['ruleState'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

