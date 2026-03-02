// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_coip_pools_filter.dart';

/// {@template pulumi_ec2_get_coip_pools_get_coip_pools_args_doc}
/// Arguments for getCoipPools.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_coip_pools_get_coip_pools_args_doc}
class GetCoipPoolsArgs {
  /// Custom filter block as described below.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<List<GetCoipPoolsFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Mapping of tags, each pair of which must exactly match
  /// a pair on the desired aws_ec2_coip_pools.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetCoipPoolsArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Mapping of tags, each pair of which must exactly match
  GetCoipPoolsArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetCoipPoolsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetCoipPoolsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetCoipPoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetCoipPoolsArgs(
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetCoipPoolsFilter>(map['filters']!, (value) => GetCoipPoolsFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

