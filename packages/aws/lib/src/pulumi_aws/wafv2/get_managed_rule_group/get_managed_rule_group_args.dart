// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getManagedRuleGroup.
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

  GetManagedRuleGroupArgs({
    required this.name,
    this.region,
    required this.scope,
    required this.vendorName,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['scope'] = scope;
    map['vendorName'] = vendorName;
    final versionNameValue = versionName;
    if (versionNameValue != null) {
      map['versionName'] = versionNameValue;
    }
    return map;
  }

  factory GetManagedRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scope: pulumi.Input.asInput<String>(map['scope']),
      vendorName: pulumi.Input.asInput<String>(map['vendorName']),
      versionName: pulumi.Input.asOptionalInput<String>(map['versionName']),
    );
  }
}
