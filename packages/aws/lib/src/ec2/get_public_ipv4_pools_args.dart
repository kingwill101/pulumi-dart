// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_ipv4_pools_filter.dart';

/// {@template pulumi_ec2_get_public_ipv4_pools_get_public_ipv4_pools_args_doc}
/// Arguments for getPublicIpv4Pools.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_public_ipv4_pools_get_public_ipv4_pools_args_doc}
class GetPublicIpv4PoolsArgs {
  /// Custom filter block as described below.
  final pulumi.Input<List<GetPublicIpv4PoolsFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match a pair on the desired pools.
  ///
  /// More complex filters can be expressed using one or more `filter` sub-blocks,
  /// which take the following arguments:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPublicIpv4PoolsArgs].
  /// [filters] Custom filter block as described below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired pools.
  GetPublicIpv4PoolsArgs({
    List<GetPublicIpv4PoolsFilter>? filters,
    String? region,
    Map<String, String>? tags,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetPublicIpv4PoolsFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetPublicIpv4PoolsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetPublicIpv4PoolsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetPublicIpv4PoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetPublicIpv4PoolsFilter>(map['filters'], (value) => GetPublicIpv4PoolsFilter.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

