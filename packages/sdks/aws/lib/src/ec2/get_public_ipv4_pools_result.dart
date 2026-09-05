// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_ipv4_pools_filter.dart';

/// Result data returned by getPublicIpv4Pools.
class GetPublicIpv4PoolsResult {
  final List<GetPublicIpv4PoolsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of all the pool IDs found.
  final List<String>? poolIds;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetPublicIpv4PoolsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [poolIds] List of all the pool IDs found.
  /// [region] Optional.
  /// [tags] Optional.
  const GetPublicIpv4PoolsResult({
    this.filters,
    this.id,
    this.poolIds,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPublicIpv4PoolsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'poolIds': ?poolIds,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetPublicIpv4PoolsResult.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPublicIpv4PoolsFilter>(guardedValue, (value) => GetPublicIpv4PoolsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolIds: (() { final guardedValue = map['poolIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
