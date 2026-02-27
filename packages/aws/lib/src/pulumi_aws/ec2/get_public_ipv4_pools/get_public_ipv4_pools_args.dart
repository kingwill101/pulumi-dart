// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_public_ipv4_pools_filter/get_public_ipv4_pools_filter.dart';

/// Arguments for getPublicIpv4Pools.
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

  GetPublicIpv4PoolsArgs({
    this.filters,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetPublicIpv4PoolsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetPublicIpv4PoolsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetPublicIpv4PoolsArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolsArgs(
      filters: pulumi.Input.asOptionalInput<List<GetPublicIpv4PoolsFilter>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
