// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_filter.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final List<GetInstancesFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of instance IDs of the matched SSM managed instances.
  final List<String> ids;
  final String region;

  /// Creates a new [GetInstancesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of instance IDs of the matched SSM managed instances.
  /// [region] Required.
  GetInstancesResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    return map;
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetInstancesFilter>(
              map['filters'],
              (value) => GetInstancesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
