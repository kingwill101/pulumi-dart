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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? templateName,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      templateName = pulumi.Input.asOptionalInput<String>(templateName);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
    );
  }
}

