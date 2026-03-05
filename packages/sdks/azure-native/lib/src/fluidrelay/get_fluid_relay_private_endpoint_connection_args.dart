// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fluidrelay_get_fluid_relay_private_endpoint_connection_args_doc}
/// Arguments for getFluidRelayPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_fluidrelay_get_fluid_relay_private_endpoint_connection_args_doc}
class GetFluidRelayPrivateEndpointConnectionArgs {
  /// The Fluid Relay server resource name.
  final pulumi.Input<String> fluidRelayServerName;
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The resource group containing the resource.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [GetFluidRelayPrivateEndpointConnectionArgs].
  /// [fluidRelayServerName] The Fluid Relay server resource name.
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroup] The resource group containing the resource.
  GetFluidRelayPrivateEndpointConnectionArgs({
    required this.fluidRelayServerName,
    required this.privateEndpointConnectionName,
    required this.resourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fluidRelayServerName': fluidRelayServerName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetFluidRelayPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetFluidRelayPrivateEndpointConnectionArgs(
      fluidRelayServerName: pulumi.Input.fromValue(map['fluidRelayServerName'] as String),
      privateEndpointConnectionName: pulumi.Input.fromValue(map['privateEndpointConnectionName'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
    );
  }
}

