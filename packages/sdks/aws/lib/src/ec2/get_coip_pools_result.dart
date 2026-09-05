// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_coip_pools_filter.dart';

/// Result data returned by getCoipPools.
class GetCoipPoolsResult {
  final List<GetCoipPoolsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of COIP Pool Identifiers
  final List<String>? poolIds;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetCoipPoolsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [poolIds] Set of COIP Pool Identifiers
  /// [region] Optional.
  /// [tags] Optional.
  const GetCoipPoolsResult({
    this.filters,
    this.id,
    this.poolIds,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCoipPoolsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'poolIds': ?poolIds,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetCoipPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetCoipPoolsResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCoipPoolsFilter>(guardedValue, (value) => GetCoipPoolsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolIds: (() { final guardedValue = map['poolIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
