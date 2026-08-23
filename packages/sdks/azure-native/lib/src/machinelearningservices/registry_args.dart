// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_id.dart';
import 'managed_resource_group_settings.dart';
import 'managed_service_identity.dart';
import 'registry_private_endpoint_connection.dart';
import 'registry_region_arm_details.dart';
import 'sku.dart';

/// {@template pulumi_machinelearningservices_registry_args_doc}
/// The set of arguments for Registry.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_registry_args_doc}
class RegistryArgs {
  /// Discovery URL for the Registry
  final pulumi.Input<String>? discoveryUrl;
  /// Managed service identity (system assigned and/or user assigned identities)
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// IntellectualPropertyPublisher for the registry
  final pulumi.Input<String>? intellectualPropertyPublisher;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// ResourceId of the managed RG if the registry has system created resources
  final pulumi.Input<ArmResourceId>? managedResourceGroup;
  /// Managed resource group specific settings
  final pulumi.Input<ManagedResourceGroupSettings>? managedResourceGroupSettings;
  /// MLFlow Registry URI for the Registry
  final pulumi.Input<String>? mlFlowRegistryUri;
  /// Is the Registry accessible from the internet?
  /// Possible values: "Enabled" or "Disabled"
  final pulumi.Input<String>? publicNetworkAccess;
  /// Details of each region the registry is in
  final pulumi.Input<List<RegistryRegionArmDetails>>? regionDetails;
  /// Name of Azure Machine Learning registry. This is case-insensitive
  final pulumi.Input<String>? registryName;
  /// Private endpoint connections info used for pending connections in private link portal
  final pulumi.Input<List<RegistryPrivateEndpointConnection>>? registryPrivateEndpointConnections;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Sku details required for ARM contract for Autoscaling.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RegistryArgs].
  /// [discoveryUrl] Discovery URL for the Registry
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [intellectualPropertyPublisher] IntellectualPropertyPublisher for the registry
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroup] ResourceId of the managed RG if the registry has system created resources
  /// [managedResourceGroupSettings] Managed resource group specific settings
  /// [mlFlowRegistryUri] MLFlow Registry URI for the Registry
  /// [publicNetworkAccess] Is the Registry accessible from the internet?
  /// [regionDetails] Details of each region the registry is in
  /// [registryName] Name of Azure Machine Learning registry. This is case-insensitive
  /// [registryPrivateEndpointConnections] Private endpoint connections info used for pending connections in private link portal
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [tags] Resource tags.
  const RegistryArgs({
    this.discoveryUrl,
    this.identity,
    this.intellectualPropertyPublisher,
    this.kind,
    this.location,
    this.managedResourceGroup,
    this.managedResourceGroupSettings,
    this.mlFlowRegistryUri,
    this.publicNetworkAccess,
    this.regionDetails,
    this.registryName,
    this.registryPrivateEndpointConnections,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryUrl': ?discoveryUrl,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'intellectualPropertyPublisher': ?intellectualPropertyPublisher,
      'kind': ?kind,
      'location': ?location,
      'managedResourceGroup': ?pulumi.Input.mapOptionalInputValue<ArmResourceId, Map<String, dynamic>>(managedResourceGroup, (value) => value.toMap()),
      'managedResourceGroupSettings': ?pulumi.Input.mapOptionalInputValue<ManagedResourceGroupSettings, Map<String, dynamic>>(managedResourceGroupSettings, (value) => value.toMap()),
      'mlFlowRegistryUri': ?mlFlowRegistryUri,
      'publicNetworkAccess': ?publicNetworkAccess,
      'regionDetails': ?pulumi.Input.mapOptionalInputValue<List<RegistryRegionArmDetails>, List<Map<String, dynamic>>>(regionDetails, (value) => pulumi.Input.encodeList<RegistryRegionArmDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registryName': ?registryName,
      'registryPrivateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<RegistryPrivateEndpointConnection>, List<Map<String, dynamic>>>(registryPrivateEndpointConnections, (value) => pulumi.Input.encodeList<RegistryPrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory RegistryArgs.fromMap(Map<String, dynamic> map) {
    return RegistryArgs(
      discoveryUrl: (() { final guardedValue = map['discoveryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intellectualPropertyPublisher: (() { final guardedValue = map['intellectualPropertyPublisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceGroup: (() { final guardedValue = map['managedResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ArmResourceId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedResourceGroupSettings: (() { final guardedValue = map['managedResourceGroupSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedResourceGroupSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mlFlowRegistryUri: (() { final guardedValue = map['mlFlowRegistryUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionDetails: (() { final guardedValue = map['regionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryRegionArmDetails>(guardedValue, (value) => RegistryRegionArmDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      registryName: (() { final guardedValue = map['registryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryPrivateEndpointConnections: (() { final guardedValue = map['registryPrivateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryPrivateEndpointConnection>(guardedValue, (value) => RegistryPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Sku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
