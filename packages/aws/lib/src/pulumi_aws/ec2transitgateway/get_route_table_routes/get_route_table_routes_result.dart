// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_table_routes_filter/get_route_table_routes_filter.dart';
import '../get_route_table_routes_route/get_route_table_routes_route.dart';

/// Result data returned by getRouteTableRoutes.
class GetRouteTableRoutesResult {
  final List<GetRouteTableRoutesFilter> filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// List of Transit Gateway Routes.
  final List<GetRouteTableRoutesRoute> routes;
  final String transitGatewayRouteTableId;

  GetRouteTableRoutesResult({
    required this.filters,
    required this.id,
    required this.region,
    required this.routes,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filters'] =
        Input.encodeList<GetRouteTableRoutesFilter, Map<String, dynamic>>(
            filters, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    map['routes'] =
        Input.encodeList<GetRouteTableRoutesRoute, Map<String, dynamic>>(
            routes, (value) => value.toMap());
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory GetRouteTableRoutesResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoutesResult(
      filters: Input.decodeList<GetRouteTableRoutesFilter>(
          map['filters'],
          (value) => GetRouteTableRoutesFilter.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      routes: Input.decodeList<GetRouteTableRoutesRoute>(
          map['routes'],
          (value) => GetRouteTableRoutesRoute.fromMap(
              (value as Map).cast<String, dynamic>())),
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] as String,
    );
  }
}
