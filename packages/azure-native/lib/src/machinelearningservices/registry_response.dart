// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_id_response.dart';
import 'managed_resource_group_settings_response.dart';
import 'registry_private_endpoint_connection_response.dart';
import 'registry_region_arm_details_response.dart';

/// Details of the Registry
class RegistryResponse {
  /// Discovery URL for the Registry
  final String? discoveryUrl;
  /// IntellectualPropertyPublisher for the registry
  final String? intellectualPropertyPublisher;
  /// ResourceId of the managed RG if the registry has system created resources
  final ArmResourceIdResponse? managedResourceGroup;
  /// Managed resource group specific settings
  final ManagedResourceGroupSettingsResponse? managedResourceGroupSettings;
  /// MLFlow Registry URI for the Registry
  final String? mlFlowRegistryUri;
  /// Is the Registry accessible from the internet?
  /// Possible values: "Enabled" or "Disabled"
  final String? publicNetworkAccess;
  /// Details of each region the registry is in
  final List<RegistryRegionArmDetailsResponse>? regionDetails;
  /// Private endpoint connections info used for pending connections in private link portal
  final List<RegistryPrivateEndpointConnectionResponse>? registryPrivateEndpointConnections;

  /// Creates a new [RegistryResponse].
  /// [discoveryUrl] Discovery URL for the Registry
  /// [intellectualPropertyPublisher] IntellectualPropertyPublisher for the registry
  /// [managedResourceGroup] ResourceId of the managed RG if the registry has system created resources
  /// [managedResourceGroupSettings] Managed resource group specific settings
  /// [mlFlowRegistryUri] MLFlow Registry URI for the Registry
  /// [publicNetworkAccess] Is the Registry accessible from the internet?
  /// [regionDetails] Details of each region the registry is in
  /// [registryPrivateEndpointConnections] Private endpoint connections info used for pending connections in private link portal
  RegistryResponse({
    this.discoveryUrl,
    this.intellectualPropertyPublisher,
    this.managedResourceGroup,
    this.managedResourceGroupSettings,
    this.mlFlowRegistryUri,
    this.publicNetworkAccess,
    this.regionDetails,
    this.registryPrivateEndpointConnections,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discoveryUrl': ?discoveryUrl,
      'intellectualPropertyPublisher': ?intellectualPropertyPublisher,
      'managedResourceGroup': ?managedResourceGroup == null ? null : managedResourceGroup!.toMap(),
      'managedResourceGroupSettings': ?managedResourceGroupSettings == null ? null : managedResourceGroupSettings!.toMap(),
      'mlFlowRegistryUri': ?mlFlowRegistryUri,
      'publicNetworkAccess': ?publicNetworkAccess,
      'regionDetails': ?regionDetails == null ? null : pulumi.Input.encodeList<RegistryRegionArmDetailsResponse, Map<String, dynamic>>(regionDetails!, (value) => value.toMap()),
      'registryPrivateEndpointConnections': ?registryPrivateEndpointConnections == null ? null : pulumi.Input.encodeList<RegistryPrivateEndpointConnectionResponse, Map<String, dynamic>>(registryPrivateEndpointConnections!, (value) => value.toMap()),
    };
  }

  factory RegistryResponse.fromMap(Map<String, dynamic> map) {
    return RegistryResponse(
      discoveryUrl: map['discoveryUrl'] == null ? null : map['discoveryUrl'] as String,
      intellectualPropertyPublisher: map['intellectualPropertyPublisher'] == null ? null : map['intellectualPropertyPublisher'] as String,
      managedResourceGroup: map['managedResourceGroup'] == null ? null : ArmResourceIdResponse.fromMap((map['managedResourceGroup'] as Map).cast<String, dynamic>()),
      managedResourceGroupSettings: map['managedResourceGroupSettings'] == null ? null : ManagedResourceGroupSettingsResponse.fromMap((map['managedResourceGroupSettings'] as Map).cast<String, dynamic>()),
      mlFlowRegistryUri: map['mlFlowRegistryUri'] == null ? null : map['mlFlowRegistryUri'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      regionDetails: map['regionDetails'] == null ? null : pulumi.Input.decodeList<RegistryRegionArmDetailsResponse>(map['regionDetails'], (value) => RegistryRegionArmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      registryPrivateEndpointConnections: map['registryPrivateEndpointConnections'] == null ? null : pulumi.Input.decodeList<RegistryPrivateEndpointConnectionResponse>(map['registryPrivateEndpointConnections'], (value) => RegistryPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

