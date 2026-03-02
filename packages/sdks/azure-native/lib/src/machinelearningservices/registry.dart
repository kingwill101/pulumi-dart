// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_id.dart';
import 'registry_private_endpoint_connection.dart';
import 'registry_region_arm_details.dart';

/// Details of the Registry
class Registry {
  /// Discovery URL for the Registry
  final pulumi.Input<String>? discoveryUrl;
  /// IntellectualPropertyPublisher for the registry
  final pulumi.Input<String>? intellectualPropertyPublisher;
  /// ResourceId of the managed RG if the registry has system created resources
  final pulumi.Input<ArmResourceId>? managedResourceGroup;
  /// MLFlow Registry URI for the Registry
  final pulumi.Input<String>? mlFlowRegistryUri;
  /// Is the Registry accessible from the internet?
  /// Possible values: "Enabled" or "Disabled"
  final pulumi.Input<String>? publicNetworkAccess;
  /// Details of each region the registry is in
  final pulumi.Input<List<RegistryRegionArmDetails>>? regionDetails;
  /// Private endpoint connections info used for pending connections in private link portal
  final pulumi.Input<List<RegistryPrivateEndpointConnection>>? registryPrivateEndpointConnections;

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
      'managedResourceGroup': ?pulumi.Input.mapOptionalInputValue<ArmResourceId, Map<String, dynamic>>(managedResourceGroup, (value) => value.toMap()),
      'mlFlowRegistryUri': ?mlFlowRegistryUri,
      'publicNetworkAccess': ?publicNetworkAccess,
      'regionDetails': ?pulumi.Input.mapOptionalInputValue<List<RegistryRegionArmDetails>, List<Map<String, dynamic>>>(regionDetails, (value) => pulumi.Input.encodeList<RegistryRegionArmDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'registryPrivateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<RegistryPrivateEndpointConnection>, List<Map<String, dynamic>>>(registryPrivateEndpointConnections, (value) => pulumi.Input.encodeList<RegistryPrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory Registry.fromMap(Map<String, dynamic> map) {
    return Registry(
      discoveryUrl: map['discoveryUrl'] == null ? null : (map['discoveryUrl'] as String).input(),
      intellectualPropertyPublisher: map['intellectualPropertyPublisher'] == null ? null : (map['intellectualPropertyPublisher'] as String).input(),
      managedResourceGroup: map['managedResourceGroup'] == null ? null : (ArmResourceId.fromMap((map['managedResourceGroup'] as Map).cast<String, dynamic>())).input(),
      mlFlowRegistryUri: map['mlFlowRegistryUri'] == null ? null : (map['mlFlowRegistryUri'] as String).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess'] as String).input(),
      regionDetails: map['regionDetails'] == null ? null : (pulumi.Input.decodeList<RegistryRegionArmDetails>(map['regionDetails'], (value) => RegistryRegionArmDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
      registryPrivateEndpointConnections: map['registryPrivateEndpointConnections'] == null ? null : (pulumi.Input.decodeList<RegistryPrivateEndpointConnection>(map['registryPrivateEndpointConnections'], (value) => RegistryPrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

