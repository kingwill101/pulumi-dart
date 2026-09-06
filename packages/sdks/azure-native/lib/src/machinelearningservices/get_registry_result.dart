// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_id_response.dart';
import 'managed_resource_group_settings_response.dart';
import 'managed_service_identity_response.dart';
import 'registry_private_endpoint_connection_response.dart';
import 'registry_region_arm_details_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRegistry.
class GetRegistryResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Discovery URL for the Registry
  final String? discoveryUrl;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Managed service identity (system assigned and/or user assigned identities)
  final ManagedServiceIdentityResponse? identity;
  /// IntellectualPropertyPublisher for the registry
  final String? intellectualPropertyPublisher;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  final String? kind;
  /// The geo-location where the resource lives
  final String? location;
  /// ResourceId of the managed RG if the registry has system created resources
  final ArmResourceIdResponse? managedResourceGroup;
  /// Managed resource group specific settings
  final ManagedResourceGroupSettingsResponse? managedResourceGroupSettings;
  /// MLFlow Registry URI for the Registry
  final String? mlFlowRegistryUri;
  /// The name of the resource
  final String? name;
  /// Is the Registry accessible from the internet?
  /// Possible values: "Enabled" or "Disabled"
  final String? publicNetworkAccess;
  /// Details of each region the registry is in
  final List<RegistryRegionArmDetailsResponse>? regionDetails;
  /// Private endpoint connections info used for pending connections in private link portal
  final List<RegistryPrivateEndpointConnectionResponse>? registryPrivateEndpointConnections;
  /// Sku details required for ARM contract for Autoscaling.
  final SkuResponse? sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetRegistryResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [discoveryUrl] Discovery URL for the Registry
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Managed service identity (system assigned and/or user assigned identities)
  /// [intellectualPropertyPublisher] IntellectualPropertyPublisher for the registry
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type.
  /// [location] The geo-location where the resource lives
  /// [managedResourceGroup] ResourceId of the managed RG if the registry has system created resources
  /// [managedResourceGroupSettings] Managed resource group specific settings
  /// [mlFlowRegistryUri] MLFlow Registry URI for the Registry
  /// [name] The name of the resource
  /// [publicNetworkAccess] Is the Registry accessible from the internet?
  /// [regionDetails] Details of each region the registry is in
  /// [registryPrivateEndpointConnections] Private endpoint connections info used for pending connections in private link portal
  /// [sku] Sku details required for ARM contract for Autoscaling.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRegistryResult({
    this.azureApiVersion,
    this.discoveryUrl,
    this.id,
    this.identity,
    this.intellectualPropertyPublisher,
    this.kind,
    this.location,
    this.managedResourceGroup,
    this.managedResourceGroupSettings,
    this.mlFlowRegistryUri,
    this.name,
    this.publicNetworkAccess,
    this.regionDetails,
    this.registryPrivateEndpointConnections,
    this.sku,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'discoveryUrl': ?discoveryUrl,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'intellectualPropertyPublisher': ?intellectualPropertyPublisher,
      'kind': ?kind,
      'location': ?location,
      'managedResourceGroup': ?managedResourceGroup?.toMap(),
      'managedResourceGroupSettings': ?managedResourceGroupSettings?.toMap(),
      'mlFlowRegistryUri': ?mlFlowRegistryUri,
      'name': ?name,
      'publicNetworkAccess': ?publicNetworkAccess,
      'regionDetails': ?(() { final guardedValue = regionDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<RegistryRegionArmDetailsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'registryPrivateEndpointConnections': ?(() { final guardedValue = registryPrivateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<RegistryPrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetRegistryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoveryUrl: (() { final guardedValue = map['discoveryUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      intellectualPropertyPublisher: (() { final guardedValue = map['intellectualPropertyPublisher']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResourceGroup: (() { final guardedValue = map['managedResourceGroup']; if (guardedValue == null) return null; return ArmResourceIdResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managedResourceGroupSettings: (() { final guardedValue = map['managedResourceGroupSettings']; if (guardedValue == null) return null; return ManagedResourceGroupSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      mlFlowRegistryUri: (() { final guardedValue = map['mlFlowRegistryUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      regionDetails: (() { final guardedValue = map['regionDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryRegionArmDetailsResponse>(guardedValue, (value) => RegistryRegionArmDetailsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      registryPrivateEndpointConnections: (() { final guardedValue = map['registryPrivateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryPrivateEndpointConnectionResponse>(guardedValue, (value) => RegistryPrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
