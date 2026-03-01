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
    pulumi.Output<EncryptionProperties>? encryption,
    pulumi.Output<String>? fluidRelayServerName,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? provisioningState,
    required pulumi.Output<String> resourceGroup,
    pulumi.Output<String>? storagesku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      encryption = pulumi.Input.asOptionalInput<EncryptionProperties>(encryption),
      fluidRelayServerName = pulumi.Input.asOptionalInput<String>(fluidRelayServerName),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup),
      storagesku = pulumi.Input.asOptionalInput<String>(storagesku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      encryption: map['encryption'] == null ? null : pulumi.Output.create<EncryptionProperties>(EncryptionProperties.fromMap((map['encryption'] as Map).cast<String, dynamic>())),
      fluidRelayServerName: map['fluidRelayServerName'] == null ? null : pulumi.Output.create<String>(map['fluidRelayServerName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<String>(map['provisioningState'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
      storagesku: map['storagesku'] == null ? null : pulumi.Output.create<String>(map['storagesku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

