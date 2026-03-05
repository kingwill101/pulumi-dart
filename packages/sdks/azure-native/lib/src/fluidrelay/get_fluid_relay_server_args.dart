// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fluidrelay_get_fluid_relay_server_args_doc}
/// Arguments for getFluidRelayServer.
/// {@endtemplate}
/// {@macro pulumi_fluidrelay_get_fluid_relay_server_args_doc}
class GetFluidRelayServerArgs {
  /// The Fluid Relay server resource name.
  final pulumi.Input<String> fluidRelayServerName;
  /// The resource group containing the resource.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [GetFluidRelayServerArgs].
  /// [fluidRelayServerName] The Fluid Relay server resource name.
  /// [resourceGroup] The resource group containing the resource.
  GetFluidRelayServerArgs({
    required this.fluidRelayServerName,
    required this.resourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fluidRelayServerName': fluidRelayServerName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetFluidRelayServerArgs.fromMap(Map<String, dynamic> map) {
    return GetFluidRelayServerArgs(
      fluidRelayServerName: pulumi.Input.fromValue(map['fluidRelayServerName'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
    );
  }
}

