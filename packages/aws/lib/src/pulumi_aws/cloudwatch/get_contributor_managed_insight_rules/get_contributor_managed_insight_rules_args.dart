// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getContributorManagedInsightRules.
class GetContributorManagedInsightRulesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of an Amazon Web Services resource that has managed Contributor Insights rules.
  final pulumi.Input<String> resourceArn;

  GetContributorManagedInsightRulesArgs({
    this.region,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory GetContributorManagedInsightRulesArgs.fromMap(
      Map<String, dynamic> map) {
    return GetContributorManagedInsightRulesArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      resourceArn: pulumi.Input.asInput<String>(map['resourceArn']),
    );
  }
}
