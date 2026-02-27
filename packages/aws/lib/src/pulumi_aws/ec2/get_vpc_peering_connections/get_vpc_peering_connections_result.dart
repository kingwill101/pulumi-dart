// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpc_peering_connections_filter/get_vpc_peering_connections_filter.dart';

/// Result data returned by getVpcPeeringConnections.
class GetVpcPeeringConnectionsResult {
  final List<GetVpcPeeringConnectionsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IDs of the VPC Peering Connections.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;

  GetVpcPeeringConnectionsResult({
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
      map['filters'] = pulumi.Input.encodeList<GetVpcPeeringConnectionsFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetVpcPeeringConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpcPeeringConnectionsFilter>(
              map['filters'],
              (value) => GetVpcPeeringConnectionsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
