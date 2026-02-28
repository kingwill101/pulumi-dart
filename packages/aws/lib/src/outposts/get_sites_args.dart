// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_outposts_get_sites_get_sites_args_doc}
/// Arguments for getSites.
/// {@endtemplate}
/// {@macro pulumi_outposts_get_sites_get_sites_args_doc}
class GetSitesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetSitesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetSitesArgs({
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

  factory GetSitesArgs.fromMap(Map<String, dynamic> map) {
    return GetSitesArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
