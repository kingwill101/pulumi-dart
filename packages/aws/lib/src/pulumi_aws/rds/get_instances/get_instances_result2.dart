// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instances_filter/get_instances_filter2.dart';

/// Result data returned by getInstances.
class GetInstancesResult2 {
  final List<GetInstancesFilter2>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// ARNs of the matched RDS instances.
  final List<String> instanceArns;

  /// Identifiers of the matched RDS instances.
  final List<String> instanceIdentifiers;
  final String region;
  final Map<String, String> tags;

  GetInstancesResult2({
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
          Input.encodeList<GetInstancesFilter2, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['instanceArns'] = instanceArns;
    map['instanceIdentifiers'] = instanceIdentifiers;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetInstancesResult2.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult2(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetInstancesFilter2>(
              map['filters'],
              (value) => GetInstancesFilter2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceArns: (map['instanceArns'] as List).cast<String>(),
      instanceIdentifiers: (map['instanceIdentifiers'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
