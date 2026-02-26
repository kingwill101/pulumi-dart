// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instances_filter/get_instances_filter.dart';

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

  GetInstancesResult({
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
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetInstancesFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    final instanceStateNamesValue = instanceStateNames;
    if (instanceStateNamesValue != null) {
      map['instanceStateNames'] = instanceStateNamesValue;
    }
    map['instanceTags'] = instanceTags;
    map['ipv6Addresses'] = ipv6Addresses;
    map['privateIps'] = privateIps;
    map['publicIps'] = publicIps;
    map['region'] = region;
    return map;
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetInstancesFilter>(
              map['filters'],
              (value) => GetInstancesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceStateNames: map['instanceStateNames'] == null
          ? null
          : (map['instanceStateNames'] as List).cast<String>(),
      instanceTags: (map['instanceTags'] as Map).cast<String, String>(),
      ipv6Addresses: (map['ipv6Addresses'] as List).cast<String>(),
      privateIps: (map['privateIps'] as List).cast<String>(),
      publicIps: (map['publicIps'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
