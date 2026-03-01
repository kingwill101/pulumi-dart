// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_peering_connections_filter.dart';

/// Result data returned by getVpcPeeringConnections.
class GetVpcPeeringConnectionsResult {
  final List<GetVpcPeeringConnectionsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IDs of the VPC Peering Connections.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;

  /// Creates a new [GetVpcPeeringConnectionsResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of the VPC Peering Connections.
  /// [region] Required.
  /// [tags] Required.
  GetVpcPeeringConnectionsResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetVpcPeeringConnectionsFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'region': region,
      'tags': tags,
    };
  }

  factory GetVpcPeeringConnectionsResult.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionsResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpcPeeringConnectionsFilter>(
              map['filters'],
              (value) => GetVpcPeeringConnectionsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
