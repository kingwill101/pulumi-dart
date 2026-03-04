// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_id_response.dart';
import 'managed_resource_group_settings_response.dart';
import 'registry_private_endpoint_connection_response.dart';
import 'registry_region_arm_details_response.dart';

/// Details of the Registry
class RegistryResponse {
  /// Discovery URL for the Registry
  final pulumi.Input<String>? discoveryUrl;

  /// IntellectualPropertyPublisher for the registry
  final pulumi.Input<String>? intellectualPropertyPublisher;

  /// ResourceId of the managed RG if the registry has system created resources
  final pulumi.Input<ArmResourceIdResponse>? managedResourceGroup;

  /// Managed resource group specific settings
  final pulumi.Input<ManagedResourceGroupSettingsResponse>?
  managedResourceGroupSettings;

  /// MLFlow Registry URI for the Registry
  final pulumi.Input<String>? mlFlowRegistryUri;

  /// Is the Registry accessible from the internet?
  /// Possible values: "Enabled" or "Disabled"
  final pulumi.Input<String>? publicNetworkAccess;

  /// Details of each region the registry is in
  final pulumi.Input<List<RegistryRegionArmDetailsResponse>>? regionDetails;

  /// Private endpoint connections info used for pending connections in private link portal
  final pulumi.Input<List<RegistryPrivateEndpointConnectionResponse>>?
  registryPrivateEndpointConnections;

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
      'managedResourceGroup':
          ?pulumi.Input.mapOptionalInputValue<
            ArmResourceIdResponse,
            Map<String, dynamic>
          >(managedResourceGroup, (value) => value.toMap()),
      'managedResourceGroupSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedResourceGroupSettingsResponse,
            Map<String, dynamic>
          >(managedResourceGroupSettings, (value) => value.toMap()),
      'mlFlowRegistryUri': ?mlFlowRegistryUri,
      'publicNetworkAccess': ?publicNetworkAccess,
      'regionDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegistryRegionArmDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            regionDetails,
            (value) =>
                pulumi.Input.encodeList<
                  RegistryRegionArmDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'registryPrivateEndpointConnections':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegistryPrivateEndpointConnectionResponse>,
            List<Map<String, dynamic>>
          >(
            registryPrivateEndpointConnections,
            (value) =>
                pulumi.Input.encodeList<
                  RegistryPrivateEndpointConnectionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RegistryResponse.fromMap(Map<String, dynamic> map) {
    return RegistryResponse(
      discoveryUrl: (() {
        final guardedValue = map['discoveryUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      intellectualPropertyPublisher: (() {
        final guardedValue = map['intellectualPropertyPublisher'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedResourceGroup: (() {
        final guardedValue = map['managedResourceGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ArmResourceIdResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      managedResourceGroupSettings: (() {
        final guardedValue = map['managedResourceGroupSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedResourceGroupSettingsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mlFlowRegistryUri: (() {
        final guardedValue = map['mlFlowRegistryUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionDetails: (() {
        final guardedValue = map['regionDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegistryRegionArmDetailsResponse>(
            guardedValue,
            (value) => RegistryRegionArmDetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      registryPrivateEndpointConnections: (() {
        final guardedValue = map['registryPrivateEndpointConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegistryPrivateEndpointConnectionResponse>(
            guardedValue,
            (value) => RegistryPrivateEndpointConnectionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
