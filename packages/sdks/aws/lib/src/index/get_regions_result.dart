// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_filter.dart';

/// Result data returned by getRegions.
class GetRegionsResult {
  final bool? allRegions;
  final List<GetRegionsFilter>? filters;
  /// (**Deprecated**) Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final String? id;
  /// Names of regions that meets the criteria.
  final List<String>? names;

  /// Creates a new [GetRegionsResult].
  /// [allRegions] Optional.
  /// [filters] Optional.
  /// [id] (**Deprecated**) Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  /// [names] Names of regions that meets the criteria.
  const GetRegionsResult({
    this.allRegions,
    this.filters,
    this.id,
    this.names,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allRegions': ?allRegions,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'names': ?names,
    };
  }

  factory GetRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetRegionsResult(
      allRegions: (() { final guardedValue = map['allRegions']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionsFilter>(guardedValue, (value) => GetRegionsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
