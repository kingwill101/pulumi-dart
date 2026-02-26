// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ContributorManagedInsightRule.
class ContributorManagedInsightRuleArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  final Input<String> resourceArn;
  final Input<String>? state;
  final Input<Map<String, String>>? tags;

  /// Template name for the managed Contributor Insights rule, as returned by ListManagedInsightRules.
  ///
  /// The following arguments are optional:
  final Input<String> templateName;

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
      region: Input.asOptionalInput<String>(map['region']),
      resourceArn: Input.asInput<String>(map['resourceArn']),
      state: Input.asOptionalInput<String>(map['state']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      templateName: Input.asInput<String>(map['templateName']),
    );
  }
}
