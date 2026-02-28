// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_contributor_managed_insight_rule_contributor_managed_insight_rule_args_doc}
/// The set of arguments for ContributorManagedInsightRule.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_contributor_managed_insight_rule_contributor_managed_insight_rule_args_doc}
class ContributorManagedInsightRuleArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  final pulumi.Input<String> resourceArn;
  final pulumi.Input<String>? state;
  final pulumi.Input<Map<String, String>>? tags;

  /// Template name for the managed Contributor Insights rule, as returned by ListManagedInsightRules.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> templateName;

  /// Creates a new [ContributorManagedInsightRuleArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  /// [state] Optional.
  /// [tags] Optional.
  /// [templateName] Template name for the managed Contributor Insights rule, as returned by ListManagedInsightRules.
  ContributorManagedInsightRuleArgs({
    String? region,
    required String resourceArn,
    String? state,
    Map<String, String>? tags,
    required String templateName,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        resourceArn = pulumi.Input.asInput<String>(resourceArn),
        state = pulumi.Input.asOptionalInput<String>(state),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        templateName = pulumi.Input.asInput<String>(templateName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['templateName'] = templateName;
    return map;
  }

  factory ContributorManagedInsightRuleArgs.fromMap(Map<String, dynamic> map) {
    return ContributorManagedInsightRuleArgs(
      region: map['region'] == null ? null : map['region'] as String,
      resourceArn: map['resourceArn'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      templateName: map['templateName'] as String,
    );
  }
}
