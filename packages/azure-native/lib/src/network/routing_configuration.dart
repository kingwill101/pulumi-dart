// ignore_for_file: unused_element, unnecessary_cast

import 'propagated_route_table.dart';
import 'sub_resource.dart';
import 'vnet_route.dart';

/// Routing Configuration indicating the associated and propagated route tables for this connection.
class RoutingConfiguration {
  /// The resource id RouteTable associated with this RoutingConfiguration.
  final SubResource? associatedRouteTable;
  /// The resource id of the RouteMap associated with this RoutingConfiguration for inbound learned routes.
  final SubResource? inboundRouteMap;
  /// The resource id of theRouteMap associated with this RoutingConfiguration for outbound advertised routes.
  final SubResource? outboundRouteMap;
  /// The list of RouteTables to advertise the routes to.
  final PropagatedRouteTable? propagatedRouteTables;
  /// List of routes that control routing from VirtualHub into a virtual network connection.
  final VnetRoute? vnetRoutes;

  /// Creates a new [RoutingConfiguration].
  /// [associatedRouteTable] The resource id RouteTable associated with this RoutingConfiguration.
  /// [inboundRouteMap] The resource id of the RouteMap associated with this RoutingConfiguration for inbound learned routes.
  /// [outboundRouteMap] The resource id of theRouteMap associated with this RoutingConfiguration for outbound advertised routes.
  /// [propagatedRouteTables] The list of RouteTables to advertise the routes to.
  /// [vnetRoutes] List of routes that control routing from VirtualHub into a virtual network connection.
  RoutingConfiguration({
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

  factory RoutingConfiguration.fromMap(Map<String, dynamic> map) {
    return RoutingConfiguration(
      associatedRouteTable: map['associatedRouteTable'] == null ? null : SubResource.fromMap((map['associatedRouteTable'] as Map).cast<String, dynamic>()),
      inboundRouteMap: map['inboundRouteMap'] == null ? null : SubResource.fromMap((map['inboundRouteMap'] as Map).cast<String, dynamic>()),
      outboundRouteMap: map['outboundRouteMap'] == null ? null : SubResource.fromMap((map['outboundRouteMap'] as Map).cast<String, dynamic>()),
      propagatedRouteTables: map['propagatedRouteTables'] == null ? null : PropagatedRouteTable.fromMap((map['propagatedRouteTables'] as Map).cast<String, dynamic>()),
      vnetRoutes: map['vnetRoutes'] == null ? null : VnetRoute.fromMap((map['vnetRoutes'] as Map).cast<String, dynamic>()),
    );
  }
}

