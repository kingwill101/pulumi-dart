// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_ipv4_pools_filter.dart';

/// Result data returned by getPublicIpv4Pools.
class GetPublicIpv4PoolsResult {
  final List<GetPublicIpv4PoolsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of all the pool IDs found.
  final List<String> poolIds;
  final String region;
  final Map<String, String> tags;

  /// Creates a new [GetPublicIpv4PoolsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [poolIds] List of all the pool IDs found.
  /// [region] Required.
  /// [tags] Required.
  GetPublicIpv4PoolsResult({
    this.filters,
    required this.id,
    required this.poolIds,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetPublicIpv4PoolsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'poolIds': poolIds,
      'region': region,
      'tags': tags,
    };
  }

  factory GetPublicIpv4PoolsResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetPublicIpv4PoolsFilter>(map['filters'], (value) => GetPublicIpv4PoolsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      poolIds: (map['poolIds'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

