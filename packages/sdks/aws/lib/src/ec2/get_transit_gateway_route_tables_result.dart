// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_gateway_route_tables_filter.dart';

/// Result data returned by getTransitGatewayRouteTables.
class GetTransitGatewayRouteTablesResult {
  final List<GetTransitGatewayRouteTablesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of Transit Gateway Route Table identifiers.
  final List<String> ids;
  final String region;
  final Map<String, String> tags;

  /// Creates a new [GetTransitGatewayRouteTablesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of Transit Gateway Route Table identifiers.
  /// [region] Required.
  /// [tags] Required.
  GetTransitGatewayRouteTablesResult({
    this.filters,
    required this.id,
    required this.ids,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetTransitGatewayRouteTablesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'region': region,
      'tags': tags,
    };
  }

  factory GetTransitGatewayRouteTablesResult.fromMap(Map<String, dynamic> map) {
    return GetTransitGatewayRouteTablesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetTransitGatewayRouteTablesFilter>(map['filters']!, (value) => GetTransitGatewayRouteTablesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

