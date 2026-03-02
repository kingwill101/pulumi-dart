// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_response_routes.dart';

/// RouteTable for the subnet
class VirtualNetworkPropertiesResponseRouteTable {
  /// Etag - Gets a unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? id;
  /// Name - READ-ONLY; Resource name.
  final pulumi.Input<String>? name;
  /// Routes - Collection of routes contained within a route table.
  final pulumi.Input<List<VirtualNetworkPropertiesResponseRoutes>>? routes;
  /// Type - READ-ONLY; Resource type.
  final pulumi.Input<String>? type;

  /// Creates a new [VirtualNetworkPropertiesResponseRouteTable].
  /// [id] Etag - Gets a unique read-only string that changes whenever the resource is updated.
  /// [name] Name - READ-ONLY; Resource name.
  /// [routes] Routes - Collection of routes contained within a route table.
  /// [type] Type - READ-ONLY; Resource type.
  VirtualNetworkPropertiesResponseRouteTable({
    this.id,
    this.name,
    this.routes,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesResponseRoutes>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesResponseRoutes, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory VirtualNetworkPropertiesResponseRouteTable.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesResponseRouteTable(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      routes: map['routes'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkPropertiesResponseRoutes>(map['routes']!, (value) => VirtualNetworkPropertiesResponseRoutes.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

