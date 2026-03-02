// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ContributorManagedInsightRule resources.
class ContributorManagedInsightRuleState {
  /// ARN of the Contributor Managed Insight Rule.
  final pulumi.Input<String>? arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  final pulumi.Input<String>? resourceArn;
  final pulumi.Input<String>? ruleName;
  final pulumi.Input<String>? state;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Template name for the managed Contributor Insights rule, as returned by ListManagedInsightRules.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? templateName;

  /// Creates a new [ContributorManagedInsightRuleState].
  /// [arn] ARN of the Contributor Managed Insight Rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  /// [ruleName] Optional.
  /// [state] Optional.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  /// [templateName] Template name for the managed Contributor Insights rule, as returned by ListManagedInsightRules.
  ContributorManagedInsightRuleState({
    this.arn,
    this.region,
    this.resourceArn,
    this.ruleName,
    this.state,
    this.tags,
    this.tagsAll,
    this.templateName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'ruleName': ?ruleName,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'templateName': ?templateName,
    };
  }

  factory ContributorManagedInsightRuleState.fromMap(Map<String, dynamic> map) {
    return ContributorManagedInsightRuleState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      templateName: map['templateName'] == null ? null : (map['templateName'] as String).input(),
    );
  }
}

