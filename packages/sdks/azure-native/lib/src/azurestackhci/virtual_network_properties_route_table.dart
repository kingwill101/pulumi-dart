// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_properties_routes.dart';

/// RouteTable for the subnet
class VirtualNetworkPropertiesRouteTable {
  /// Etag - Gets a unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? id;
  /// Name - READ-ONLY; Resource name.
  final pulumi.Input<String>? name;
  /// Routes - Collection of routes contained within a route table.
  final pulumi.Input<List<VirtualNetworkPropertiesRoutes>>? routes;
  /// Type - READ-ONLY; Resource type.
  final pulumi.Input<String>? type;

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
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkPropertiesRoutes>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualNetworkPropertiesRoutes, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory VirtualNetworkPropertiesRouteTable.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkPropertiesRouteTable(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkPropertiesRoutes>(guardedValue, (value) => VirtualNetworkPropertiesRoutes.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

