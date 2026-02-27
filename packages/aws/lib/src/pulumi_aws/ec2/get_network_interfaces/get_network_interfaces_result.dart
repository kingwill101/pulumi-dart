// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_network_interfaces_filter/get_network_interfaces_filter.dart';

/// Result data returned by getNetworkInterfaces.
class GetNetworkInterfacesResult {
  final List<GetNetworkInterfacesFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// List of all the network interface ids found.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;

  GetNetworkInterfacesResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetNetworkInterfacesFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetNetworkInterfacesResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfacesResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetNetworkInterfacesFilter>(
              map['filters'],
              (value) => GetNetworkInterfacesFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
