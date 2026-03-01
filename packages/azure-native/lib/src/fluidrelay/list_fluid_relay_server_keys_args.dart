// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fluidrelay_list_fluid_relay_server_keys_args_doc}
/// Arguments for listFluidRelayServerKeys.
/// {@endtemplate}
/// {@macro pulumi_fluidrelay_list_fluid_relay_server_keys_args_doc}
class ListFluidRelayServerKeysArgs {
  /// The Fluid Relay server resource name.
  final pulumi.Input<String> fluidRelayServerName;
  /// The resource group containing the resource.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [ListFluidRelayServerKeysArgs].
  /// [fluidRelayServerName] The Fluid Relay server resource name.
  /// [resourceGroup] The resource group containing the resource.
  ListFluidRelayServerKeysArgs({
    required String fluidRelayServerName,
    required String resourceGroup,
  }) :
      fluidRelayServerName = pulumi.Input.asInput<String>(fluidRelayServerName),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fluidRelayServerName': fluidRelayServerName,
      'resourceGroup': resourceGroup,
    };
  }

  factory ListFluidRelayServerKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListFluidRelayServerKeysArgs(
      fluidRelayServerName: map['fluidRelayServerName'] as String,
      resourceGroup: map['resourceGroup'] as String,
    );
  }
}

