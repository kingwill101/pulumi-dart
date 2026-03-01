// ignore_for_file: unused_element, unnecessary_cast

import 'propagated_route_table_response.dart';
import 'sub_resource_response.dart';
import 'vnet_route_response.dart';

/// Routing Configuration indicating the associated and propagated route tables for this connection.
class RoutingConfigurationResponse {
  /// The resource id RouteTable associated with this RoutingConfiguration.
  final SubResourceResponse? associatedRouteTable;
  /// The resource id of the RouteMap associated with this RoutingConfiguration for inbound learned routes.
  final SubResourceResponse? inboundRouteMap;
  /// The resource id of theRouteMap associated with this RoutingConfiguration for outbound advertised routes.
  final SubResourceResponse? outboundRouteMap;
  /// The list of RouteTables to advertise the routes to.
  final PropagatedRouteTableResponse? propagatedRouteTables;
  /// List of routes that control routing from VirtualHub into a virtual network connection.
  final VnetRouteResponse? vnetRoutes;

  /// Creates a new [RoutingConfigurationResponse].
  /// [associatedRouteTable] The resource id RouteTable associated with this RoutingConfiguration.
  /// [inboundRouteMap] The resource id of the RouteMap associated with this RoutingConfiguration for inbound learned routes.
  /// [outboundRouteMap] The resource id of theRouteMap associated with this RoutingConfiguration for outbound advertised routes.
  /// [propagatedRouteTables] The list of RouteTables to advertise the routes to.
  /// [vnetRoutes] List of routes that control routing from VirtualHub into a virtual network connection.
  RoutingConfigurationResponse({
    this.associatedRouteTable,
    this.inboundRouteMap,
    this.outboundRouteMap,
    this.propagatedRouteTables,
    this.vnetRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRouteTable': ?associatedRouteTable == null ? null : associatedRouteTable!.toMap(),
      'inboundRouteMap': ?inboundRouteMap == null ? null : inboundRouteMap!.toMap(),
      'outboundRouteMap': ?outboundRouteMap == null ? null : outboundRouteMap!.toMap(),
      'propagatedRouteTables': ?propagatedRouteTables == null ? null : propagatedRouteTables!.toMap(),
      'vnetRoutes': ?vnetRoutes == null ? null : vnetRoutes!.toMap(),
    };
  }

  factory RoutingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return RoutingConfigurationResponse(
      associatedRouteTable: map['associatedRouteTable'] == null ? null : SubResourceResponse.fromMap((map['associatedRouteTable'] as Map).cast<String, dynamic>()),
      inboundRouteMap: map['inboundRouteMap'] == null ? null : SubResourceResponse.fromMap((map['inboundRouteMap'] as Map).cast<String, dynamic>()),
      outboundRouteMap: map['outboundRouteMap'] == null ? null : SubResourceResponse.fromMap((map['outboundRouteMap'] as Map).cast<String, dynamic>()),
      propagatedRouteTables: map['propagatedRouteTables'] == null ? null : PropagatedRouteTableResponse.fromMap((map['propagatedRouteTables'] as Map).cast<String, dynamic>()),
      vnetRoutes: map['vnetRoutes'] == null ? null : VnetRouteResponse.fromMap((map['vnetRoutes'] as Map).cast<String, dynamic>()),
    );
  }
}

