// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_ami_ids_filter/get_ami_ids_filter.dart';

/// Result data returned by getAmiIds.
class GetAmiIdsResult {
  /// List of the Autoscaling Groups Arns in the current region.
  final List<String> arns;
  final List<GetAmiIdsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of the Autoscaling Groups in the current region.
  final List<String> names;
  final String region;

  GetAmiIdsResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetAmiIdsFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['names'] = names;
    map['region'] = region;
    return map;
  }

  factory GetAmiIdsResult.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetAmiIdsFilter>(
              map['filters'],
              (value) => GetAmiIdsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
