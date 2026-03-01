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
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? ruleDefinition,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? ruleState,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      ruleDefinition = pulumi.Input.asOptionalInput<String>(ruleDefinition),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      ruleState = pulumi.Input.asOptionalInput<String>(ruleState),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      ruleDefinition: map['ruleDefinition'] == null ? null : pulumi.Output.create<String>(map['ruleDefinition'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      ruleState: map['ruleState'] == null ? null : pulumi.Output.create<String>(map['ruleState'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

