// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_filter.dart';

/// Result data returned by getRegions.
class GetRegionsResult {
  final bool? allRegions;
  final List<GetRegionsFilter>? filters;

  /// Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final String id;

  /// Names of regions that meets the criteria.
  final List<String> names;

  /// Creates a new [GetRegionsResult].
  /// [allRegions] Optional.
  /// [filters] Optional.
  /// [id] Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  /// [names] Names of regions that meets the criteria.
  GetRegionsResult({
    this.allRegions,
    this.filters,
    required this.id,
    required this.names,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allRegionsValue = allRegions;
    if (allRegionsValue != null) {
      map['allRegions'] = allRegionsValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetRegionsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['names'] = names;
    return map;
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      allRegions: map['allRegions'] == null ? null : map['allRegions'] as bool,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetRegionsFilter>(
              map['filters'],
              (value) => GetRegionsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
    );
  }
}
