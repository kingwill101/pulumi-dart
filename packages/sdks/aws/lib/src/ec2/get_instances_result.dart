// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_filter.dart';

/// Result data returned by getInstances.
class GetInstancesResult {
  final List<GetInstancesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// IDs of instances found through the filter
  final List<String> ids;
  final List<String>? instanceStateNames;
  final Map<String, String> instanceTags;
  /// IPv6 addresses of instances found through the filter
  final List<String> ipv6Addresses;
  /// Private IP addresses of instances found through the filter
  final List<String> privateIps;
  /// Public IP addresses of instances found through the filter
  final List<String> publicIps;
  final String region;

  /// Creates a new [GetInstancesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of instances found through the filter
  /// [instanceStateNames] Optional.
  /// [instanceTags] Required.
  /// [ipv6Addresses] IPv6 addresses of instances found through the filter
  /// [privateIps] Private IP addresses of instances found through the filter
  /// [publicIps] Public IP addresses of instances found through the filter
  /// [region] Required.
  const GetInstancesResult({
    this.filters,
    required this.id,
    required this.ids,
    this.instanceStateNames,
    required this.instanceTags,
    required this.ipv6Addresses,
    required this.privateIps,
    required this.publicIps,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'ids': ids,
      'instanceStateNames': ?instanceStateNames,
      'instanceTags': instanceTags,
      'ipv6Addresses': ipv6Addresses,
      'privateIps': privateIps,
      'publicIps': publicIps,
      'region': region,
    };
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstancesFilter>(guardedValue, (value) => GetInstancesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceStateNames: (() { final guardedValue = map['instanceStateNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      instanceTags: (map['instanceTags'] as Map).cast<String, String>(),
      ipv6Addresses: (map['ipv6Addresses'] as List).cast<String>(),
      privateIps: (map['privateIps'] as List).cast<String>(),
      publicIps: (map['publicIps'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
