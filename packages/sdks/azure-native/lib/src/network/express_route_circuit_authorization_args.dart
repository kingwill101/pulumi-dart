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
    pulumi.Output<String>? authorizationKey,
    pulumi.Output<String>? authorizationName,
    pulumi.Output<String>? authorizationUseStatus,
    required pulumi.Output<String> circuitName,
    pulumi.Output<String>? id,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authorizationKey = pulumi.Input.asOptionalInput<String>(authorizationKey),
      authorizationName = pulumi.Input.asOptionalInput<String>(authorizationName),
      authorizationUseStatus = pulumi.Input.asOptionalInput<String>(authorizationUseStatus),
      circuitName = pulumi.Input.asInput<String>(circuitName),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      authorizationKey: map['authorizationKey'] == null ? null : pulumi.Output.create<String>(map['authorizationKey'] as String),
      authorizationName: map['authorizationName'] == null ? null : pulumi.Output.create<String>(map['authorizationName'] as String),
      authorizationUseStatus: map['authorizationUseStatus'] == null ? null : pulumi.Output.create<String>(map['authorizationUseStatus'] as String),
      circuitName: pulumi.Output.create<String>(map['circuitName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

