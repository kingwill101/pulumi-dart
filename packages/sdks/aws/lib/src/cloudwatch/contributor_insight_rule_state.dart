// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContributorInsightRule resources.
class ContributorInsightRuleState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the Contributor Insight Rule.
  final pulumi.Input<String>? resourceArn;

  /// Definition of the rule, as a JSON object. For details on the valid syntax, see [Contributor Insights Rule Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).
  final pulumi.Input<String>? ruleDefinition;

  /// Unique name of the rule.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? ruleName;

  /// State of the rule. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? ruleState;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ContributorInsightRuleState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the Contributor Insight Rule.
  /// [ruleDefinition] Definition of the rule, as a JSON object. For details on the valid syntax, see [Contributor Insights Rule Syntax](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ContributorInsights-RuleSyntax.html).
  /// [ruleName] Unique name of the rule.
  /// [ruleState] State of the rule. Valid values are `ENABLED` and `DISABLED`.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  ContributorInsightRuleState({
    this.region,
    this.resourceArn,
    this.ruleDefinition,
    this.ruleName,
    this.ruleState,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': ?resourceArn,
      'ruleDefinition': ?ruleDefinition,
      'ruleName': ?ruleName,
      'ruleState': ?ruleState,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ContributorInsightRuleState.fromMap(Map<String, dynamic> map) {
    return ContributorInsightRuleState(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceArn: (() {
        final guardedValue = map['resourceArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleDefinition: (() {
        final guardedValue = map['ruleDefinition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleName: (() {
        final guardedValue = map['ruleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleState: (() {
        final guardedValue = map['ruleState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
