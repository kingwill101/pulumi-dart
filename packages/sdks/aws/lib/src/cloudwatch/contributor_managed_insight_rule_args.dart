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
    this.region,
    required this.resourceArn,
    this.state,
    this.tags,
    required this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': resourceArn,
      'state': ?state,
      'tags': ?tags,
      'templateName': templateName,
    };
  }

  factory ContributorManagedInsightRuleArgs.fromMap(Map<String, dynamic> map) {
    return ContributorManagedInsightRuleArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      state: (() {
        final guardedValue = map['state'];
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
      templateName: pulumi.Input.fromValue(map['templateName'] as String),
    );
  }
}
