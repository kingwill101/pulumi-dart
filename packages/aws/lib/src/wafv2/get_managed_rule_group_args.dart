// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_wafv2_get_managed_rule_group_get_managed_rule_group_args_doc}
/// Arguments for getManagedRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_wafv2_get_managed_rule_group_get_managed_rule_group_args_doc}
class GetManagedRuleGroupArgs {
  /// Managed rule group name.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether this is for a global resource type, such as a Amazon CloudFront distribution. For an AWS Amplify application, use `CLOUDFRONT`. Valid values: `CLOUDFRONT`, `REGIONAL`.
  final pulumi.Input<String> scope;
  /// Managed rule group vendor name.
  final pulumi.Input<String> vendorName;
  /// Version of the rule group.
  final pulumi.Input<String>? versionName;

  /// Creates a new [GetManagedRuleGroupArgs].
  /// [name] Managed rule group name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [scope] Whether this is for a global resource type, such as a Amazon CloudFront distribution. For an AWS Amplify application, use `CLOUDFRONT`. Valid values: `CLOUDFRONT`, `REGIONAL`.
  /// [vendorName] Managed rule group vendor name.
  /// [versionName] Version of the rule group.
  GetManagedRuleGroupArgs({
    required String name,
    String? region,
    required String scope,
    required String vendorName,
    String? versionName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      scope = pulumi.Input.asInput<String>(scope),
      vendorName = pulumi.Input.asInput<String>(vendorName),
      versionName = pulumi.Input.asOptionalInput<String>(versionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'scope': scope,
      'vendorName': vendorName,
      'versionName': ?versionName,
    };
  }

  factory GetManagedRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      scope: map['scope'] as String,
      vendorName: map['vendorName'] as String,
      versionName: map['versionName'] == null ? null : map['versionName'] as String,
    );
  }
}

