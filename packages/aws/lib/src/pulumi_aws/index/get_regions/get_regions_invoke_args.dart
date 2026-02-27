// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_regions_filter/get_regions_filter.dart';

/// Arguments for getRegions.
class GetRegionsInvokeArgs {
  /// If true the source will query all regions regardless of availability.
  final pulumi.Input<bool>? allRegions;

  /// Configuration block(s) to use as filters. Detailed below.
  final pulumi.Input<List<GetRegionsFilter>>? filters;

  /// Identifier of the current partition (e.g., `aws` in AWS Commercial, `aws-cn` in AWS China).
  final pulumi.Input<String>? id;

  GetRegionsInvokeArgs({
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
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetRegionsFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetRegionsFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory GetRegionsInvokeArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsInvokeArgs(
      allRegions: pulumi.Input.asOptionalInput<bool>(map['allRegions']),
      filters:
          pulumi.Input.asOptionalInput<List<GetRegionsFilter>>(map['filters']),
      id: pulumi.Input.asOptionalInput<String>(map['id']),
    );
  }
}
