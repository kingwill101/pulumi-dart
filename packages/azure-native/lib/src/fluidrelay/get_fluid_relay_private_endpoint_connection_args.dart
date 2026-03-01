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
    required String fluidRelayServerName,
    required String privateEndpointConnectionName,
    required String resourceGroup,
  }) :
      fluidRelayServerName = pulumi.Input.asInput<String>(fluidRelayServerName),
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fluidRelayServerName': fluidRelayServerName,
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetFluidRelayPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetFluidRelayPrivateEndpointConnectionArgs(
      fluidRelayServerName: map['fluidRelayServerName'] as String,
      privateEndpointConnectionName: map['privateEndpointConnectionName'] as String,
      resourceGroup: map['resourceGroup'] as String,
    );
  }
}

