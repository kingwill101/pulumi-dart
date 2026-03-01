// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_id.dart';
import 'registry_private_endpoint_connection.dart';
import 'registry_region_arm_details.dart';

/// Details of the Registry
class Registry {
  /// Discovery URL for the Registry
  final String? discoveryUrl;
  /// IntellectualPropertyPublisher for the registry
  final String? intellectualPropertyPublisher;
  /// ResourceId of the managed RG if the registry has system created resources
  final ArmResourceId? managedResourceGroup;
  /// MLFlow Registry URI for the Registry
  final String? mlFlowRegistryUri;
  /// Is the Registry accessible from the internet?
  /// Possible values: "Enabled" or "Disabled"
  final String? publicNetworkAccess;
  /// Details of each region the registry is in
  final List<RegistryRegionArmDetails>? regionDetails;
  /// Private endpoint connections info used for pending connections in private link portal
  final List<RegistryPrivateEndpointConnection>? registryPrivateEndpointConnections;

  /// Creates a new [Registry].
  /// [discoveryUrl] Discovery URL for the Registry
  /// [intellectualPropertyPublisher] IntellectualPropertyPublisher for the registry
  /// [managedResourceGroup] ResourceId of the managed RG if the registry has system created resources
  /// [mlFlowRegistryUri] MLFlow Registry URI for the Registry
  /// [publicNetworkAccess] Is the Registry accessible from the internet?
  /// [regionDetails] Details of each region the registry is in
  /// [registryPrivateEndpointConnections] Private endpoint connections info used for pending connections in private link portal
  Registry({
    this.discoveryUrl,
    this.intellectualPropertyPublisher,
    this.managedResourceGroup,
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
      'mlFlowRegistryUri': ?mlFlowRegistryUri,
      'publicNetworkAccess': ?publicNetworkAccess,
      'regionDetails': ?regionDetails == null ? null : pulumi.Input.encodeList<RegistryRegionArmDetails, Map<String, dynamic>>(regionDetails!, (value) => value.toMap()),
      'registryPrivateEndpointConnections': ?registryPrivateEndpointConnections == null ? null : pulumi.Input.encodeList<RegistryPrivateEndpointConnection, Map<String, dynamic>>(registryPrivateEndpointConnections!, (value) => value.toMap()),
    };
  }

  factory Registry.fromMap(Map<String, dynamic> map) {
    return Registry(
      discoveryUrl: map['discoveryUrl'] == null ? null : map['discoveryUrl'] as String,
      intellectualPropertyPublisher: map['intellectualPropertyPublisher'] == null ? null : map['intellectualPropertyPublisher'] as String,
      managedResourceGroup: map['managedResourceGroup'] == null ? null : ArmResourceId.fromMap((map['managedResourceGroup'] as Map).cast<String, dynamic>()),
      mlFlowRegistryUri: map['mlFlowRegistryUri'] == null ? null : map['mlFlowRegistryUri'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      regionDetails: map['regionDetails'] == null ? null : pulumi.Input.decodeList<RegistryRegionArmDetails>(map['regionDetails'], (value) => RegistryRegionArmDetails.fromMap((value as Map).cast<String, dynamic>())),
      registryPrivateEndpointConnections: map['registryPrivateEndpointConnections'] == null ? null : pulumi.Input.decodeList<RegistryPrivateEndpointConnection>(map['registryPrivateEndpointConnections'], (value) => RegistryPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

