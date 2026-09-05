// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_filter.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final List<GetInstancesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IDs of instances found through the filter
  final List<String>? ids;
  final List<String>? instanceStateNames;
  final Map<String, String>? instanceTags;
  /// IPv6 addresses of instances found through the filter
  final List<String>? ipv6Addresses;
  /// Private IP addresses of instances found through the filter
  final List<String>? privateIps;
  /// Public IP addresses of instances found through the filter
  final List<String>? publicIps;
  final String? region;

  /// Creates a new [GetInstancesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of instances found through the filter
  /// [instanceStateNames] Optional.
  /// [instanceTags] Optional.
  /// [ipv6Addresses] IPv6 addresses of instances found through the filter
  /// [privateIps] Private IP addresses of instances found through the filter
  /// [publicIps] Public IP addresses of instances found through the filter
  /// [region] Optional.
  const GetInstancesResult({
    this.filters,
    this.id,
    this.ids,
    this.instanceStateNames,
    this.instanceTags,
    this.ipv6Addresses,
    this.privateIps,
    this.publicIps,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ids': ?ids,
      'instanceStateNames': ?instanceStateNames,
      'instanceTags': ?instanceTags,
      'ipv6Addresses': ?ipv6Addresses,
      'privateIps': ?privateIps,
      'publicIps': ?publicIps,
      'region': ?region,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancesFilter>(guardedValue, (value) => GetInstancesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      instanceStateNames: (() { final guardedValue = map['instanceStateNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      instanceTags: (() { final guardedValue = map['instanceTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      privateIps: (() { final guardedValue = map['privateIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      publicIps: (() { final guardedValue = map['publicIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
