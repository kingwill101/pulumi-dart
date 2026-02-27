// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_public_ipv4_pools_filter/get_public_ipv4_pools_filter.dart';

/// Result data returned by getPublicIpv4Pools.
class GetPublicIpv4PoolsResult {
  final List<GetPublicIpv4PoolsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the pool IDs found.
  final List<String> poolIds;
  final String region;
  final Map<String, String> tags;

  GetPublicIpv4PoolsResult({
    this.filters,
    required this.id,
    required this.poolIds,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetPublicIpv4PoolsFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['poolIds'] = poolIds;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetPublicIpv4PoolsResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetPublicIpv4PoolsFilter>(
              map['filters'],
              (value) => GetPublicIpv4PoolsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      poolIds: (map['poolIds'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
