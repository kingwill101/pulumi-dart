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
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetLinksArgs.fromMap(Map<String, dynamic> map) {
    return GetLinksArgs(
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

