// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_filter.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final List<GetInstancesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARNs of the matched RDS instances.
  final List<String>? instanceArns;
  /// Identifiers of the matched RDS instances.
  final List<String>? instanceIdentifiers;
  final String? region;
  final Map<String, String>? tags;

  /// Creates a new [GetInstancesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceArns] ARNs of the matched RDS instances.
  /// [instanceIdentifiers] Identifiers of the matched RDS instances.
  /// [region] Optional.
  /// [tags] Optional.
  const GetInstancesResult({
    this.filters,
    this.id,
    this.instanceArns,
    this.instanceIdentifiers,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceArns': ?instanceArns,
      'instanceIdentifiers': ?instanceIdentifiers,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancesFilter>(guardedValue, (value) => GetInstancesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceArns: (() { final guardedValue = map['instanceArns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      instanceIdentifiers: (() { final guardedValue = map['instanceIdentifiers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
