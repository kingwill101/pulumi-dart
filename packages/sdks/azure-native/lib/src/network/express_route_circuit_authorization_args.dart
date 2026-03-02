// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_express_route_circuit_authorization_args_doc}
/// The set of arguments for ExpressRouteCircuitAuthorization.
/// {@endtemplate}
/// {@macro pulumi_network_express_route_circuit_authorization_args_doc}
class ExpressRouteCircuitAuthorizationArgs {
  /// The authorization key.
  final pulumi.Input<String>? authorizationKey;
  /// The name of the authorization.
  final pulumi.Input<String>? authorizationName;
  /// The authorization use status.
  final pulumi.Input<String>? authorizationUseStatus;
  /// The name of the express route circuit.
  final pulumi.Input<String> circuitName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ExpressRouteCircuitAuthorizationArgs].
  /// [authorizationKey] The authorization key.
  /// [authorizationName] The name of the authorization.
  /// [authorizationUseStatus] The authorization use status.
  /// [circuitName] The name of the express route circuit.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [resourceGroupName] The name of the resource group.
  ExpressRouteCircuitAuthorizationArgs({
    this.authorizationKey,
    this.authorizationName,
    this.authorizationUseStatus,
    required this.circuitName,
    this.id,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'authorizationName': ?authorizationName,
      'authorizationUseStatus': ?authorizationUseStatus,
      'circuitName': circuitName,
      'id': ?id,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ExpressRouteCircuitAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitAuthorizationArgs(
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey']! as String).input(),
      authorizationName: map['authorizationName'] == null ? null : (map['authorizationName']! as String).input(),
      authorizationUseStatus: map['authorizationUseStatus'] == null ? null : (map['authorizationUseStatus']! as String).input(),
      circuitName: (map['circuitName'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

