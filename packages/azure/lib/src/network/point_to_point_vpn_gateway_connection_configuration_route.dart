// ignore_for_file: unused_element, unnecessary_cast

import 'point_to_point_vpn_gateway_connection_configuration_route_propagated_route_table.dart';

class PointToPointVpnGatewayConnectionConfigurationRoute {
  /// The Virtual Hub Route Table resource id associated with this Routing Configuration.
  final String associatedRouteTableId;
  /// The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  final String? inboundRouteMapId;
  /// The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  final String? outboundRouteMapId;
  /// A `propagated_route_table` block as defined below.
  final PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable? propagatedRouteTable;

  /// Creates a new [PointToPointVpnGatewayConnectionConfigurationRoute].
  /// [associatedRouteTableId] The Virtual Hub Route Table resource id associated with this Routing Configuration.
  /// [inboundRouteMapId] The resource ID of the Route Map associated with this Routing Configuration for inbound learned routes.
  /// [outboundRouteMapId] The resource ID of the Route Map associated with this Routing Configuration for outbound advertised routes.
  /// [propagatedRouteTable] A `propagated_route_table` block as defined below.
  PointToPointVpnGatewayConnectionConfigurationRoute({
    required this.associatedRouteTableId,
    this.inboundRouteMapId,
    this.outboundRouteMapId,
    this.propagatedRouteTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRouteTableId': associatedRouteTableId,
      'inboundRouteMapId': ?inboundRouteMapId,
      'outboundRouteMapId': ?outboundRouteMapId,
      'propagatedRouteTable': ?propagatedRouteTable == null ? null : propagatedRouteTable!.toMap(),
    };
  }

  factory PointToPointVpnGatewayConnectionConfigurationRoute.fromMap(Map<String, dynamic> map) {
    return PointToPointVpnGatewayConnectionConfigurationRoute(
      associatedRouteTableId: map['associatedRouteTableId'] as String,
      inboundRouteMapId: map['inboundRouteMapId'] == null ? null : map['inboundRouteMapId'] as String,
      outboundRouteMapId: map['outboundRouteMapId'] == null ? null : map['outboundRouteMapId'] as String,
      propagatedRouteTable: map['propagatedRouteTable'] == null ? null : PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable.fromMap((map['propagatedRouteTable'] as Map).cast<String, dynamic>()),
    );
  }
}

