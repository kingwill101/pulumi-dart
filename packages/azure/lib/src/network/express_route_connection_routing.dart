// ignore_for_file: unused_element, unnecessary_cast

import 'express_route_connection_routing_propagated_route_table.dart';

class ExpressRouteConnectionRouting {
  /// The ID of the Virtual Hub Route Table associated with this Express Route Connection.
  final String? associatedRouteTableId;
  /// The ID of the Route Map associated with this Express Route Connection for inbound routes.
  final String? inboundRouteMapId;
  /// The ID of the Route Map associated with this Express Route Connection for outbound routes.
  final String? outboundRouteMapId;
  /// A `propagated_route_table` block as defined below.
  final ExpressRouteConnectionRoutingPropagatedRouteTable? propagatedRouteTable;

  /// Creates a new [ExpressRouteConnectionRouting].
  /// [associatedRouteTableId] The ID of the Virtual Hub Route Table associated with this Express Route Connection.
  /// [inboundRouteMapId] The ID of the Route Map associated with this Express Route Connection for inbound routes.
  /// [outboundRouteMapId] The ID of the Route Map associated with this Express Route Connection for outbound routes.
  /// [propagatedRouteTable] A `propagated_route_table` block as defined below.
  ExpressRouteConnectionRouting({
    this.associatedRouteTableId,
    this.inboundRouteMapId,
    this.outboundRouteMapId,
    this.propagatedRouteTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedRouteTableId': ?associatedRouteTableId,
      'inboundRouteMapId': ?inboundRouteMapId,
      'outboundRouteMapId': ?outboundRouteMapId,
      'propagatedRouteTable': ?propagatedRouteTable == null ? null : propagatedRouteTable!.toMap(),
    };
  }

  factory ExpressRouteConnectionRouting.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionRouting(
      associatedRouteTableId: map['associatedRouteTableId'] == null ? null : map['associatedRouteTableId'] as String,
      inboundRouteMapId: map['inboundRouteMapId'] == null ? null : map['inboundRouteMapId'] as String,
      outboundRouteMapId: map['outboundRouteMapId'] == null ? null : map['outboundRouteMapId'] as String,
      propagatedRouteTable: map['propagatedRouteTable'] == null ? null : ExpressRouteConnectionRoutingPropagatedRouteTable.fromMap((map['propagatedRouteTable'] as Map).cast<String, dynamic>()),
    );
  }
}

