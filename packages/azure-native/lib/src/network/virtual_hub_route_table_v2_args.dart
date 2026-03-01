// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_hub_route_v2.dart';

/// {@template pulumi_network_virtual_hub_route_table_v2_args_doc}
/// The set of arguments for VirtualHubRouteTableV2.
/// {@endtemplate}
/// {@macro pulumi_network_virtual_hub_route_table_v2_args_doc}
class VirtualHubRouteTableV2Args {
  /// List of all connections attached to this route table v2.
  final pulumi.Input<List<String>>? attachedConnections;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The resource group name of the VirtualHub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualHubRouteTableV2.
  final pulumi.Input<String>? routeTableName;
  /// List of all routes.
  final pulumi.Input<List<VirtualHubRouteV2>>? routes;
  /// The name of the VirtualHub.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [VirtualHubRouteTableV2Args].
  /// [attachedConnections] List of all connections attached to this route table v2.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [resourceGroupName] The resource group name of the VirtualHub.
  /// [routeTableName] The name of the VirtualHubRouteTableV2.
  /// [routes] List of all routes.
  /// [virtualHubName] The name of the VirtualHub.
  VirtualHubRouteTableV2Args({
    List<String>? attachedConnections,
    String? id,
    String? name,
    required String resourceGroupName,
    String? routeTableName,
    List<VirtualHubRouteV2>? routes,
    required String virtualHubName,
  }) :
      attachedConnections = pulumi.Input.asOptionalInput<List<String>>(attachedConnections),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeTableName = pulumi.Input.asOptionalInput<String>(routeTableName),
      routes = pulumi.Input.asOptionalInput<List<VirtualHubRouteV2>>(routes),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachedConnections': ?attachedConnections,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'routeTableName': ?routeTableName,
      'routes': ?pulumi.Input.mapOptionalInputValue<List<VirtualHubRouteV2>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<VirtualHubRouteV2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubName': virtualHubName,
    };
  }

  factory VirtualHubRouteTableV2Args.fromMap(Map<String, dynamic> map) {
    return VirtualHubRouteTableV2Args(
      attachedConnections: map['attachedConnections'] == null ? null : (map['attachedConnections'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routeTableName: map['routeTableName'] == null ? null : map['routeTableName'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<VirtualHubRouteV2>(map['routes'], (value) => VirtualHubRouteV2.fromMap((value as Map).cast<String, dynamic>())),
      virtualHubName: map['virtualHubName'] as String,
    );
  }
}

