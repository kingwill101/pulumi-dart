// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_coip_pools_filter.dart';

/// Result data returned by getCoipPools.
class GetCoipPoolsResult {
  final List<GetCoipPoolsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of COIP Pool Identifiers
  final List<String> poolIds;
  final String region;
  final Map<String, String>? tags;

  /// Creates a new [GetCoipPoolsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [poolIds] Set of COIP Pool Identifiers
  /// [region] Required.
  /// [tags] Optional.
  GetCoipPoolsResult({
    this.filters,
    required this.id,
    required this.poolIds,
    required this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetCoipPoolsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['poolIds'] = poolIds;
    map['region'] = region;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetCoipPoolsResult.fromMap(Map<String, dynamic> map) {
    return GetCoipPoolsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetCoipPoolsFilter>(
              map['filters'],
              (value) => GetCoipPoolsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      poolIds: (map['poolIds'] as List).cast<String>(),
      region: map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
