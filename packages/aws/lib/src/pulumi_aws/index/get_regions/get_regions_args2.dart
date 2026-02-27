// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_regions_filter/get_regions_filter.dart';

/// Arguments for getRegions.
class GetRegionsArgs2 {
  /// If true the source will query all regions regardless of availability.
  final Input<bool>? allRegions;

  /// Configuration block(s) to use as filters. Detailed below.
  final Input<List<GetRegionsFilter>>? filters;

  /// Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final Input<String>? id;

  GetRegionsArgs2({
    this.allRegions,
    this.filters,
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allRegionsValue = allRegions;
    if (allRegionsValue != null) {
      map['allRegions'] = allRegionsValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetRegionsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetRegionsFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory GetRegionsArgs2.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs2(
      allRegions: Input.asOptionalInput<bool>(map['allRegions']),
      filters: Input.asOptionalInput<List<GetRegionsFilter>>(map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
    );
  }
}
