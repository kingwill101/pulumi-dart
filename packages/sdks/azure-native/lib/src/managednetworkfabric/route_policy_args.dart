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
    pulumi.Output<String>? addressFamilyType,
    pulumi.Output<String>? annotation,
    pulumi.Output<String>? defaultAction,
    pulumi.Output<String>? location,
    required pulumi.Output<String> networkFabricId,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? routePolicyName,
    required pulumi.Output<List<RoutePolicyStatementProperties>> statements,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      addressFamilyType = pulumi.Input.asOptionalInput<String>(addressFamilyType),
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      defaultAction = pulumi.Input.asOptionalInput<String>(defaultAction),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkFabricId = pulumi.Input.asInput<String>(networkFabricId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routePolicyName = pulumi.Input.asOptionalInput<String>(routePolicyName),
      statements = pulumi.Input.asInput<List<RoutePolicyStatementProperties>>(statements),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      addressFamilyType: map['addressFamilyType'] == null ? null : pulumi.Output.create<String>(map['addressFamilyType'] as String),
      annotation: map['annotation'] == null ? null : pulumi.Output.create<String>(map['annotation'] as String),
      defaultAction: map['defaultAction'] == null ? null : pulumi.Output.create<String>(map['defaultAction'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      networkFabricId: pulumi.Output.create<String>(map['networkFabricId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      routePolicyName: map['routePolicyName'] == null ? null : pulumi.Output.create<String>(map['routePolicyName'] as String),
      statements: pulumi.Output.create<List<RoutePolicyStatementProperties>>(pulumi.Input.decodeList<RoutePolicyStatementProperties>(map['statements'], (value) => RoutePolicyStatementProperties.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

