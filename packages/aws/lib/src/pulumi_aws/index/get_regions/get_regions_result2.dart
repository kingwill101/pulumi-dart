// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_regions_filter/get_regions_filter.dart';

/// Result data returned by getRegions.
class GetRegionsResult2 {
  final bool? allRegions;
  final List<GetRegionsFilter>? filters;

  /// Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final String id;

  /// Names of regions that meets the criteria.
  final List<String> names;

  GetRegionsResult2({
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
      map['filters'] = Input.encodeList<GetRegionsFilter, Map<String, dynamic>>(
          filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['names'] = names;
    return map;
  }

  factory GetRegionsResult2.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult2(
      allRegions: map['allRegions'] == null ? null : map['allRegions'] as bool,
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetRegionsFilter>(
              map['filters'],
              (value) => GetRegionsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
    );
  }
}
