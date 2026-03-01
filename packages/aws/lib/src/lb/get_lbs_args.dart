// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lb_get_lbs_get_lbs_args_doc}
/// Arguments for getLbs.
/// {@endtemplate}
/// {@macro pulumi_lb_get_lbs_get_lbs_args_doc}
class GetLbsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired Load Balancers.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetLbsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  GetLbsArgs({String? region, Map<String, String>? tags})
    : region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region, 'tags': ?tags};
  }

  factory GetLbsArgs.fromMap(Map<String, dynamic> map) {
    return GetLbsArgs(
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
