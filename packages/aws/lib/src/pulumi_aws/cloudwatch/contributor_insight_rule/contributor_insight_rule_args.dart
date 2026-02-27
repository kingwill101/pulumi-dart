// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ContributorInsightRule.
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

  ContributorInsightRuleArgs({
    this.region,
    required this.ruleDefinition,
    required this.ruleName,
    this.ruleState,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['ruleDefinition'] = ruleDefinition;
    map['ruleName'] = ruleName;
    final ruleStateValue = ruleState;
    if (ruleStateValue != null) {
      map['ruleState'] = ruleStateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ContributorInsightRuleArgs.fromMap(Map<String, dynamic> map) {
    return ContributorInsightRuleArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      ruleDefinition: pulumi.Input.asInput<String>(map['ruleDefinition']),
      ruleName: pulumi.Input.asInput<String>(map['ruleName']),
      ruleState: pulumi.Input.asOptionalInput<String>(map['ruleState']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
