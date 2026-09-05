// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_table_routes_filter.dart';
import 'get_route_table_routes_route.dart';

/// Result data returned by getRouteTableRoutes.
class GetRouteTableRoutesResult {
  final List<GetRouteTableRoutesFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  /// List of Transit Gateway Routes.
  final List<GetRouteTableRoutesRoute>? routes;
  final String? transitGatewayRouteTableId;

  /// Creates a new [GetRouteTableRoutesResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [routes] List of Transit Gateway Routes.
  /// [transitGatewayRouteTableId] Optional.
  const GetRouteTableRoutesResult({
    this.filters,
    this.id,
    this.region,
    this.routes,
    this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTableRoutesFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
      'routes': ?(() { final guardedValue = routes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRouteTableRoutesRoute, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'transitGatewayRouteTableId': ?transitGatewayRouteTableId,
    };
  }

  factory GetRouteTableRoutesResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoutesResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTableRoutesFilter>(guardedValue, (value) => GetRouteTableRoutesFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRouteTableRoutesRoute>(guardedValue, (value) => GetRouteTableRoutesRoute.fromMap((value as Map).cast<String, dynamic>())); })(),
      transitGatewayRouteTableId: (() { final guardedValue = map['transitGatewayRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
