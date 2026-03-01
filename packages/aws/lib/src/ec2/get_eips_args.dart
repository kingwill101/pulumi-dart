// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_eips_filter.dart';

/// {@template pulumi_ec2_get_eips_get_eips_args_doc}
/// Arguments for getEips.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_eips_get_eips_args_doc}
class GetEipsArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetEipsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match a pair on the desired Elastic IPs.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEipsArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired Elastic IPs.
  GetEipsArgs({
    List<GetEipsFilter>? filters,
    String? region,
    Map<String, String>? tags,
  }) : filters = pulumi.Input.asOptionalInput<List<GetEipsFilter>>(filters),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetEipsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<GetEipsFilter, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetEipsArgs.fromMap(Map<String, dynamic> map) {
    return GetEipsArgs(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetEipsFilter>(
              map['filters'],
              (value) =>
                  GetEipsFilter.fromMap((value as Map).cast<String, dynamic>()),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
