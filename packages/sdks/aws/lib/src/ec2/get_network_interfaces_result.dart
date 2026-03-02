// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interfaces_filter.dart';

/// Result data returned by getNetworkInterfaces.
class GetNetworkInterfacesResult {
  final List<GetNetworkInterfacesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// List of all the network interface ids found.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;

  /// Creates a new [GetNetworkInterfacesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] List of all the network interface ids found.
  /// [region] Required.
  /// [tags] Required.
  GetNetworkInterfacesResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetNetworkInterfacesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'region': region,
      'tags': tags,
    };
  }

  factory GetNetworkInterfacesResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfacesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetNetworkInterfacesFilter>(map['filters']!, (value) => GetNetworkInterfacesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

