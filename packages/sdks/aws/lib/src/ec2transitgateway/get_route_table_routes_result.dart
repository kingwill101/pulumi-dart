// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_routes_filter.dart';
import 'get_route_table_routes_route.dart';

/// Result data returned by getRouteTableRoutes.
class GetRouteTableRoutesResult {
  final List<GetRouteTableRoutesFilter> filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// List of Transit Gateway Routes.
  final List<GetRouteTableRoutesRoute> routes;
  final String transitGatewayRouteTableId;

  /// Creates a new [GetRouteTableRoutesResult].
  /// [filters] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [routes] List of Transit Gateway Routes.
  /// [transitGatewayRouteTableId] Required.
  GetRouteTableRoutesResult({
    required this.filters,
    required this.id,
    required this.region,
    required this.routes,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': pulumi.Input.encodeList<GetRouteTableRoutesFilter, Map<String, dynamic>>(filters, (value) => value.toMap()),
      'id': id,
      'region': region,
      'routes': pulumi.Input.encodeList<GetRouteTableRoutesRoute, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'transitGatewayRouteTableId': transitGatewayRouteTableId,
    };
  }

  factory GetRouteTableRoutesResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoutesResult(
      filters: pulumi.Input.decodeList<GetRouteTableRoutesFilter>(map['filters'], (value) => GetRouteTableRoutesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      routes: pulumi.Input.decodeList<GetRouteTableRoutesRoute>(map['routes'], (value) => GetRouteTableRoutesRoute.fromMap((value as Map).cast<String, dynamic>())),
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] as String,
    );
  }
}

