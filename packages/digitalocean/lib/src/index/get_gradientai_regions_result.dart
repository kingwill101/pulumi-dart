// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gradientai_regions_filter.dart';
import 'get_gradientai_regions_region.dart';
import 'get_gradientai_regions_sort.dart';

/// Result data returned by getGradientaiRegions.
class GetGradientaiRegionsResult {
  final List<GetGradientaiRegionsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetGradientaiRegionsRegion> regions;
  final List<GetGradientaiRegionsSort>? sorts;

  /// Creates a new [GetGradientaiRegionsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [regions] Required.
  /// [sorts] Optional.
  GetGradientaiRegionsResult({
    this.filters,
    required this.id,
    required this.regions,
    this.sorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetGradientaiRegionsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'regions': pulumi.Input.encodeList<GetGradientaiRegionsRegion, Map<String, dynamic>>(regions, (value) => value.toMap()),
      'sorts': ?sorts == null ? null : pulumi.Input.encodeList<GetGradientaiRegionsSort, Map<String, dynamic>>(sorts!, (value) => value.toMap()),
    };
  }

  factory GetGradientaiRegionsResult.fromMap(Map<String, dynamic> map) {
    return GetGradientaiRegionsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetGradientaiRegionsFilter>(map['filters'], (value) => GetGradientaiRegionsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      regions: pulumi.Input.decodeList<GetGradientaiRegionsRegion>(map['regions'], (value) => GetGradientaiRegionsRegion.fromMap((value as Map).cast<String, dynamic>())),
      sorts: map['sorts'] == null ? null : pulumi.Input.decodeList<GetGradientaiRegionsSort>(map['sorts'], (value) => GetGradientaiRegionsSort.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

