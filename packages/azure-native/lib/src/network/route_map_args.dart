// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_rule.dart';

/// {@template pulumi_network_route_map_args_doc}
/// The set of arguments for RouteMap.
/// {@endtemplate}
/// {@macro pulumi_network_route_map_args_doc}
class RouteMapArgs {
  /// List of connections which have this RoutMap associated for inbound traffic.
  final pulumi.Input<List<String>>? associatedInboundConnections;
  /// List of connections which have this RoutMap associated for outbound traffic.
  final pulumi.Input<List<String>>? associatedOutboundConnections;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The resource group name of the RouteMap's resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the RouteMap.
  final pulumi.Input<String>? routeMapName;
  /// List of RouteMap rules to be applied.
  final pulumi.Input<List<RouteMapRule>>? rules;
  /// The name of the VirtualHub containing the RouteMap.
  final pulumi.Input<String> virtualHubName;

  /// Creates a new [RouteMapArgs].
  /// [associatedInboundConnections] List of connections which have this RoutMap associated for inbound traffic.
  /// [associatedOutboundConnections] List of connections which have this RoutMap associated for outbound traffic.
  /// [id] Resource ID.
  /// [resourceGroupName] The resource group name of the RouteMap's resource group.
  /// [routeMapName] The name of the RouteMap.
  /// [rules] List of RouteMap rules to be applied.
  /// [virtualHubName] The name of the VirtualHub containing the RouteMap.
  RouteMapArgs({
    List<String>? associatedInboundConnections,
    List<String>? associatedOutboundConnections,
    String? id,
    required String resourceGroupName,
    String? routeMapName,
    List<RouteMapRule>? rules,
    required String virtualHubName,
  }) :
      associatedInboundConnections = pulumi.Input.asOptionalInput<List<String>>(associatedInboundConnections),
      associatedOutboundConnections = pulumi.Input.asOptionalInput<List<String>>(associatedOutboundConnections),
      id = pulumi.Input.asOptionalInput<String>(id),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeMapName = pulumi.Input.asOptionalInput<String>(routeMapName),
      rules = pulumi.Input.asOptionalInput<List<RouteMapRule>>(rules),
      virtualHubName = pulumi.Input.asInput<String>(virtualHubName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedInboundConnections': ?associatedInboundConnections,
      'associatedOutboundConnections': ?associatedOutboundConnections,
      'id': ?id,
      'resourceGroupName': resourceGroupName,
      'routeMapName': ?routeMapName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RouteMapRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RouteMapRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualHubName': virtualHubName,
    };
  }

  factory RouteMapArgs.fromMap(Map<String, dynamic> map) {
    return RouteMapArgs(
      associatedInboundConnections: map['associatedInboundConnections'] == null ? null : (map['associatedInboundConnections'] as List).cast<String>(),
      associatedOutboundConnections: map['associatedOutboundConnections'] == null ? null : (map['associatedOutboundConnections'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routeMapName: map['routeMapName'] == null ? null : map['routeMapName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<RouteMapRule>(map['rules'], (value) => RouteMapRule.fromMap((value as Map).cast<String, dynamic>())),
      virtualHubName: map['virtualHubName'] as String,
    );
  }
}

