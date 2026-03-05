// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_properties.dart';
import 'identity.dart';

/// {@template pulumi_fluidrelay_fluid_relay_server_args_doc}
/// The set of arguments for FluidRelayServer.
/// {@endtemplate}
/// {@macro pulumi_fluidrelay_fluid_relay_server_args_doc}
class FluidRelayServerArgs {
  /// All encryption configuration for a resource.
  final pulumi.Input<EncryptionProperties>? encryption;
  /// The Fluid Relay server resource name.
  final pulumi.Input<String>? fluidRelayServerName;
  /// The type of identity used for the resource.
  final pulumi.Input<Identity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Provision states for FluidRelay RP
  final pulumi.Input<String>? provisioningState;
  /// The resource group containing the resource.
  final pulumi.Input<String> resourceGroup;
  /// Sku of the storage associated with the resource
  final pulumi.Input<String>? storagesku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FluidRelayServerArgs].
  /// [encryption] All encryption configuration for a resource.
  /// [fluidRelayServerName] The Fluid Relay server resource name.
  /// [identity] The type of identity used for the resource.
  /// [location] The geo-location where the resource lives
  /// [provisioningState] Provision states for FluidRelay RP
  /// [resourceGroup] The resource group containing the resource.
  /// [storagesku] Sku of the storage associated with the resource
  /// [tags] Resource tags.
  FluidRelayServerArgs({
    this.encryption,
    this.fluidRelayServerName,
    this.identity,
    this.location,
    this.provisioningState,
    required this.resourceGroup,
    this.storagesku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionProperties, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'fluidRelayServerName': ?fluidRelayServerName,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'provisioningState': ?provisioningState,
      'resourceGroup': resourceGroup,
      'storagesku': ?storagesku,
      'tags': ?tags,
    };
  }

  factory FluidRelayServerArgs.fromMap(Map<String, dynamic> map) {
    return FluidRelayServerArgs(
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fluidRelayServerName: (() { final guardedValue = map['fluidRelayServerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
      storagesku: (() { final guardedValue = map['storagesku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

