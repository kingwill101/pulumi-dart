// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_get_contributor_managed_insight_rules_get_contributor_managed_insight_rules_args_doc}
/// Arguments for getContributorManagedInsightRules.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_get_contributor_managed_insight_rules_get_contributor_managed_insight_rules_args_doc}
class GetContributorManagedInsightRulesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [GetContributorManagedInsightRulesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  GetContributorManagedInsightRulesArgs({
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory GetContributorManagedInsightRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetContributorManagedInsightRulesArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      resourceArn: (map['resourceArn'] as String).input(),
    );
  }
}

