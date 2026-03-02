// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_policy_statement_properties.dart';

/// {@template pulumi_managednetworkfabric_route_policy_args_doc}
/// The set of arguments for RoutePolicy.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_route_policy_args_doc}
class RoutePolicyArgs {
  /// AddressFamilyType. This parameter decides whether the given ipv4 or ipv6 route policy.
  final pulumi.Input<String>? addressFamilyType;
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  final pulumi.Input<String>? defaultAction;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Arm Resource ID of Network Fabric.
  final pulumi.Input<String> networkFabricId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Route Policy.
  final pulumi.Input<String>? routePolicyName;
  /// Route Policy statements.
  final pulumi.Input<List<RoutePolicyStatementProperties>> statements;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

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
    this.addressFamilyType,
    this.annotation,
    this.defaultAction,
    this.location,
    required this.networkFabricId,
    required this.resourceGroupName,
    this.routePolicyName,
    required this.statements,
    this.tags,
  });

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
      addressFamilyType: map['addressFamilyType'] == null ? null : (map['addressFamilyType']! as String).input(),
      annotation: map['annotation'] == null ? null : (map['annotation']! as String).input(),
      defaultAction: map['defaultAction'] == null ? null : (map['defaultAction']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      networkFabricId: (map['networkFabricId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      routePolicyName: map['routePolicyName'] == null ? null : (map['routePolicyName']! as String).input(),
      statements: (pulumi.Input.decodeList<RoutePolicyStatementProperties>(map['statements'], (value) => RoutePolicyStatementProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

