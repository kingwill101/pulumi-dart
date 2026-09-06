// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_policy_statement_properties.dart';

/// {@template pulumi_managednetworkfabric_route_policy_args_doc}
/// The set of arguments for RoutePolicy.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_route_policy_args_doc}
class RoutePolicyArgs {
  /// AddressFamilyType. This parameter decides whether the given ipv4 or ipv6 route policy.
  final pulumi.Input<dynamic>? addressFamilyType;
  /// Switch configuration description.
  final pulumi.Input<String?>? annotation;
  /// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  final pulumi.Input<dynamic>? defaultAction;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Arm Resource ID of Network Fabric.
  final pulumi.Input<String> networkFabricId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Route Policy.
  final pulumi.Input<String?>? routePolicyName;
  /// Route Policy statements.
  final pulumi.Input<List<RoutePolicyStatementProperties>> statements;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [RoutePolicyArgs].
  /// [addressFamilyType] AddressFamilyType. This parameter decides whether the given ipv4 or ipv6 route policy.
  /// [annotation] Switch configuration description.
  /// [defaultAction] Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  /// [location] The geo-location where the resource lives
  /// [networkFabricId] Arm Resource ID of Network Fabric.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [routePolicyName] Name of the Route Policy.
  /// [statements] Route Policy statements.
  /// [tags] Resource tags.
  RoutePolicyArgs({
    pulumi.Input<dynamic>? addressFamilyType,
    this.annotation,
    pulumi.Input<dynamic>? defaultAction,
    this.location,
    required this.networkFabricId,
    required this.resourceGroupName,
    this.routePolicyName,
    required this.statements,
    this.tags,
  }) : addressFamilyType = addressFamilyType ?? pulumi.Input.fromValue('IPv4'), defaultAction = defaultAction ?? pulumi.Input.fromValue('Deny');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamilyType': ?addressFamilyType,
      'annotation': ?annotation,
      'defaultAction': ?defaultAction,
      'location': ?location,
      'networkFabricId': networkFabricId,
      'resourceGroupName': resourceGroupName,
      'routePolicyName': ?routePolicyName,
      'statements': pulumi.Input.mapInputValue<List<RoutePolicyStatementProperties>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<RoutePolicyStatementProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory RoutePolicyArgs.fromMap(Map<String, dynamic> map) {
    return RoutePolicyArgs(
      addressFamilyType: (() { final guardedValue = map['addressFamilyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFabricId: pulumi.Input.fromValue(map['networkFabricId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      routePolicyName: (() { final guardedValue = map['routePolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statements: pulumi.Input.fromValue(pulumi.Input.decodeList<RoutePolicyStatementProperties>(map['statements']!, (value) => RoutePolicyStatementProperties.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
