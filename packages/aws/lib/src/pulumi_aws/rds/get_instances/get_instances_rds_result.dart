// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instances_filter/get_instances_filter_rds.dart';

/// Result data returned by getInstances.
class GetInstancesRdsResult {
  final List<GetInstancesFilterRds>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARNs of the matched RDS instances.
  final List<String> instanceArns;

  /// Identifiers of the matched RDS instances.
  final List<String> instanceIdentifiers;
  final String region;
  final Map<String, String> tags;

  GetInstancesRdsResult({
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
          pulumi.Input.encodeList<GetInstancesFilterRds, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['instanceArns'] = instanceArns;
    map['instanceIdentifiers'] = instanceIdentifiers;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetInstancesRdsResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesRdsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetInstancesFilterRds>(
              map['filters'],
              (value) => GetInstancesFilterRds.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceArns: (map['instanceArns'] as List).cast<String>(),
      instanceIdentifiers: (map['instanceIdentifiers'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
