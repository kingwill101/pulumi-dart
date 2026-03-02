// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regions_filter.dart';

/// {@template pulumi_index_get_regions_get_regions_args_doc}
/// Arguments for getRegions.
/// {@endtemplate}
/// {@macro pulumi_index_get_regions_get_regions_args_doc}
class GetRegionsArgs {
  /// If true the source will query all regions regardless of availability.
  final pulumi.Input<bool>? allRegions;
  /// Configuration block(s) to use as filters. Detailed below.
  final pulumi.Input<List<GetRegionsFilter>>? filters;
  /// Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final pulumi.Input<String>? id;

  /// Creates a new [GetRegionsArgs].
  /// [allRegions] If true the source will query all regions regardless of availability.
  /// [filters] Configuration block(s) to use as filters. Detailed below.
  /// [id] Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  GetRegionsArgs({
    this.allRegions,
    this.filters,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allRegions': ?allRegions,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetRegionsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetRegionsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
    };
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      allRegions: map['allRegions'] == null ? null : ((map['allRegions'] as bool).input()).input(),
      filters: map['filters'] == null ? null : ((pulumi.Input.decodeList<GetRegionsFilter>(map['filters']!, (value) => GetRegionsFilter.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
    );
  }
}

