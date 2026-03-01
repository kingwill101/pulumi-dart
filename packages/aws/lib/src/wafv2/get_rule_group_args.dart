// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafv2_get_rule_group_get_rule_group_args_doc}
/// Arguments for getRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_wafv2_get_rule_group_get_rule_group_args_doc}
class GetRuleGroupArgs {
  /// Name of the WAFv2 Rule Group.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  final pulumi.Input<String> scope;

  /// Creates a new [GetRuleGroupArgs].
  /// [name] Name of the WAFv2 Rule Group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. To work with CloudFront, you must also specify the region `us-east-1` (N. Virginia) on the AWS provider.
  GetRuleGroupArgs({
    required String name,
    String? region,
    required String scope,
  }) : name = pulumi.Input.asInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'region': ?region, 'scope': scope};
  }

  factory GetRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRuleGroupArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scope: map['scope'] as String,
    );
  }
}
