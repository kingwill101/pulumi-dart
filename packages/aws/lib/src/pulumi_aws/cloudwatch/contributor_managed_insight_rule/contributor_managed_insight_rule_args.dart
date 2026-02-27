// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ContributorManagedInsightRule.
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

  ContributorManagedInsightRuleArgs({
    this.region,
    required this.resourceArn,
    this.state,
    this.tags,
    required this.templateName,
  });

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
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
      state: pulumi.Input.asOptionalInput<String>(map['state']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      templateName: pulumi.Input.asInput<String>(map['templateName']),
    );
  }
}
