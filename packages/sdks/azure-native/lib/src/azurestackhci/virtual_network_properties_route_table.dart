// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_routes.dart';

/// RouteTable for the subnet
class VirtualNetworkPropertiesRouteTable {
  /// Etag - Gets a unique read-only string that changes whenever the resource is updated.
  final String? id;
  /// Name - READ-ONLY; Resource name.
  final String? name;
  /// Routes - Collection of routes contained within a route table.
  final List<VirtualNetworkPropertiesRoutes>? routes;
  /// Type - READ-ONLY; Resource type.
  final String? type;

  /// Creates a new [VirtualNetworkPropertiesRouteTable].
  /// [id] Etag - Gets a unique read-only string that changes whenever the resource is updated.
  /// [name] Name - READ-ONLY; Resource name.
  /// [routes] Routes - Collection of routes contained within a route table.
  /// [type] Type - READ-ONLY; Resource type.
  VirtualNetworkPropertiesRouteTable({
    this.id,
    this.name,
    this.routes,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'routes': ?routes == null ? null : pulumi.Input.encodeList<VirtualNetworkPropertiesRoutes, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory VirtualNetworkPropertiesRouteTable.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesRouteTable(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<VirtualNetworkPropertiesRoutes>(map['routes'], (value) => VirtualNetworkPropertiesRoutes.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

