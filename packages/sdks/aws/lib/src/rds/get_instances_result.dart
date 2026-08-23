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
  const GetInstancesResult({
    this.filters,
    required this.id,
    required this.instanceArns,
    required this.instanceIdentifiers,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'instanceArns': instanceArns,
      'instanceIdentifiers': instanceIdentifiers,
      'region': region,
      'tags': tags,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancesFilter>(guardedValue, (value) => GetInstancesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      instanceArns: (map['instanceArns'] as List).cast<String>(),
      instanceIdentifiers: (map['instanceIdentifiers'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
