// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oam_get_links_get_links_args_doc}
/// Arguments for getLinks.
/// {@endtemplate}
/// {@macro pulumi_oam_get_links_get_links_args_doc}
class GetLinksArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLinksArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetLinksArgs({
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

  factory GetLinksArgs.fromMap(Map<String, dynamic> map) {
    return GetLinksArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
