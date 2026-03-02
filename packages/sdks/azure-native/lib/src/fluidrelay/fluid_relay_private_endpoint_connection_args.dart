// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_fluidrelay_fluid_relay_private_endpoint_connection_args_doc}
/// The set of arguments for FluidRelayPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_fluidrelay_fluid_relay_private_endpoint_connection_args_doc}
class FluidRelayPrivateEndpointConnectionArgs {
  /// The Fluid Relay server resource name.
  final pulumi.Input<String> fluidRelayServerName;
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;
  /// The resource group containing the resource.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [FluidRelayPrivateEndpointConnectionArgs].
  /// [fluidRelayServerName] The Fluid Relay server resource name.
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [resourceGroup] The resource group containing the resource.
  FluidRelayPrivateEndpointConnectionArgs({
    required this.fluidRelayServerName,
    this.privateEndpointConnectionName,
    required this.privateLinkServiceConnectionState,
    required this.resourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fluidRelayServerName': fluidRelayServerName,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroup': resourceGroup,
    };
  }

  factory FluidRelayPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return FluidRelayPrivateEndpointConnectionArgs(
      fluidRelayServerName: (map['fluidRelayServerName'] as String).input(),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : (map['privateEndpointConnectionName']! as String).input(),
      privateLinkServiceConnectionState: (PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())).input(),
      resourceGroup: (map['resourceGroup'] as String).input(),
    );
  }
}

