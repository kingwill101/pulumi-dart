// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_network_route_args_doc}
class RouteArgs {
  /// The destination CIDR to which the route applies.
  final pulumi.Input<String>? addressPrefix;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  final pulumi.Input<String>? nextHopIpAddress;
  /// The type of Azure hop the packet should be sent to.
  final pulumi.Input<String> nextHopType;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the route.
  final pulumi.Input<String>? routeName;
  /// The name of the route table.
  final pulumi.Input<String> routeTableName;
  /// The type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [RouteArgs].
  /// [addressPrefix] The destination CIDR to which the route applies.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [nextHopIpAddress] The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance.
  /// [nextHopType] The type of Azure hop the packet should be sent to.
  /// [resourceGroupName] The name of the resource group.
  /// [routeName] The name of the route.
  /// [routeTableName] The name of the route table.
  /// [type] The type of the resource.
  RouteArgs({
    String? addressPrefix,
    String? id,
    String? name,
    String? nextHopIpAddress,
    required String nextHopType,
    required String resourceGroupName,
    String? routeName,
    required String routeTableName,
    String? type,
  }) :
      addressPrefix = pulumi.Input.asOptionalInput<String>(addressPrefix),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      nextHopIpAddress = pulumi.Input.asOptionalInput<String>(nextHopIpAddress),
      nextHopType = pulumi.Input.asInput<String>(nextHopType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeName = pulumi.Input.asOptionalInput<String>(routeName),
      routeTableName = pulumi.Input.asInput<String>(routeTableName),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'id': ?id,
      'name': ?name,
      'nextHopIpAddress': ?nextHopIpAddress,
      'nextHopType': nextHopType,
      'resourceGroupName': resourceGroupName,
      'routeName': ?routeName,
      'routeTableName': routeTableName,
      'type': ?type,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nextHopIpAddress: map['nextHopIpAddress'] == null ? null : map['nextHopIpAddress'] as String,
      nextHopType: map['nextHopType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routeName: map['routeName'] == null ? null : map['routeName'] as String,
      routeTableName: map['routeTableName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

