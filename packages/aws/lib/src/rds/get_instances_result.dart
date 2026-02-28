// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_filter.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final List<GetInstancesFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARNs of the matched RDS instances.
  final List<String> instanceArns;

  /// Identifiers of the matched RDS instances.
  final List<String> instanceIdentifiers;
  final String region;
  final Map<String, String> tags;

  /// Creates a new [GetInstancesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceArns] ARNs of the matched RDS instances.
  /// [instanceIdentifiers] Identifiers of the matched RDS instances.
  /// [region] Required.
  /// [tags] Required.
  GetInstancesResult({
    this.filters,
    required this.id,
    required this.instanceArns,
    required this.instanceIdentifiers,
    required this.region,
    required this.tags,
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
    map['instanceArns'] = instanceArns;
    map['instanceIdentifiers'] = instanceIdentifiers;
    map['region'] = region;
    map['tags'] = tags;
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
      instanceArns: (map['instanceArns'] as List).cast<String>(),
      instanceIdentifiers: (map['instanceIdentifiers'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
