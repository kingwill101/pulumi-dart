// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint.dart';
import 'private_link_service_connection_state.dart';

/// {@template pulumi_containerregistry_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The resource of private endpoint.
  final pulumi.Input<PrivateEndpoint?>? privateEndpoint;
  /// The name of the private endpoint connection.
  final pulumi.Input<String?>? privateEndpointConnectionName;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState?>? privateLinkServiceConnectionState;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [privateEndpoint] The resource of private endpoint.
  /// [privateEndpointConnectionName] The name of the private endpoint connection.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const PrivateEndpointConnectionArgs({
    this.privateEndpoint,
    this.privateEndpointConnectionName,
    this.privateLinkServiceConnectionState,
    required this.registryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointConnectionName: (() { final guardedValue = map['privateEndpointConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceConnectionState: (() { final guardedValue = map['privateLinkServiceConnectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivateLinkServiceConnectionState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
