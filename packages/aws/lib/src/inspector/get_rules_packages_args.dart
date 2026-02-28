// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_inspector_get_rules_packages_get_rules_packages_args_doc}
/// Arguments for getRulesPackages.
/// {@endtemplate}
/// {@macro pulumi_inspector_get_rules_packages_get_rules_packages_args_doc}
class GetRulesPackagesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRulesPackagesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetRulesPackagesArgs({
    String? region,
  }) : region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetRulesPackagesArgs.fromMap(Map<String, dynamic> map) {
    return GetRulesPackagesArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
