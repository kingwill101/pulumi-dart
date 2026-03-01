// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_global_reach_connection_args_doc}
/// The set of arguments for GlobalReachConnection.
/// {@endtemplate}
/// {@macro pulumi_avs_global_reach_connection_args_doc}
class GlobalReachConnectionArgs {
  /// Authorization key from the peer express route used for the global reach
  /// connection
  final pulumi.Input<String>? authorizationKey;
  /// The ID of the Private Cloud's ExpressRoute Circuit that is participating in the
  /// global reach connection
  final pulumi.Input<String>? expressRouteId;
  /// Name of the global reach connection
  final pulumi.Input<String>? globalReachConnectionName;
  /// Identifier of the ExpressRoute Circuit to peer with in the global reach
  /// connection
  final pulumi.Input<String>? peerExpressRouteCircuit;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GlobalReachConnectionArgs].
  /// [authorizationKey] Authorization key from the peer express route used for the global reach
  /// [expressRouteId] The ID of the Private Cloud's ExpressRoute Circuit that is participating in the
  /// [globalReachConnectionName] Name of the global reach connection
  /// [peerExpressRouteCircuit] Identifier of the ExpressRoute Circuit to peer with in the global reach
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GlobalReachConnectionArgs({
    pulumi.Output<String>? authorizationKey,
    pulumi.Output<String>? expressRouteId,
    pulumi.Output<String>? globalReachConnectionName,
    pulumi.Output<String>? peerExpressRouteCircuit,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authorizationKey = pulumi.Input.asOptionalInput<String>(authorizationKey),
      expressRouteId = pulumi.Input.asOptionalInput<String>(expressRouteId),
      globalReachConnectionName = pulumi.Input.asOptionalInput<String>(globalReachConnectionName),
      peerExpressRouteCircuit = pulumi.Input.asOptionalInput<String>(peerExpressRouteCircuit),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationKey': ?authorizationKey,
      'expressRouteId': ?expressRouteId,
      'globalReachConnectionName': ?globalReachConnectionName,
      'peerExpressRouteCircuit': ?peerExpressRouteCircuit,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GlobalReachConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GlobalReachConnectionArgs(
      authorizationKey: map['authorizationKey'] == null ? null : pulumi.Output.create<String>(map['authorizationKey'] as String),
      expressRouteId: map['expressRouteId'] == null ? null : pulumi.Output.create<String>(map['expressRouteId'] as String),
      globalReachConnectionName: map['globalReachConnectionName'] == null ? null : pulumi.Output.create<String>(map['globalReachConnectionName'] as String),
      peerExpressRouteCircuit: map['peerExpressRouteCircuit'] == null ? null : pulumi.Output.create<String>(map['peerExpressRouteCircuit'] as String),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

