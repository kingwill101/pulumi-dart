// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enclave_address_spaces_model_response.dart';
import 'enclave_default_settings_model_response.dart';
import 'enclave_virtual_network_model_response.dart';
import 'governed_service_item_response.dart';
import 'maintenance_mode_configuration_model_response.dart';
import 'managed_on_behalf_of_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'role_assignment_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVirtualEnclave.
class GetVirtualEnclaveResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Deploy Bastion service (True or False).
  final bool? bastionEnabled;
  /// Community Resource Id.
  final String? communityResourceId;
  /// Enclave Address Spaces
  final EnclaveAddressSpacesModelResponse? enclaveAddressSpaces;
  /// Enclave default settings.
  final EnclaveDefaultSettingsModelResponse? enclaveDefaultSettings;
  /// Enclave role assignments
  final List<RoleAssignmentItemResponse>? enclaveRoleAssignments;
  /// Virtual Network.
  final EnclaveVirtualNetworkModelResponse? enclaveVirtualNetwork;
  /// Enclave specific policies
  final List<GovernedServiceItemResponse>? governedServiceList;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// Maintenance Mode configuration.
  final MaintenanceModeConfigurationModelResponse? maintenanceModeConfiguration;
  /// Managed On Behalf Of Configuration.
  final ManagedOnBehalfOfConfigurationResponse? managedOnBehalfOfConfiguration;
  /// Managed resource group name.
  final String? managedResourceGroupName;
  /// The name of the resource
  final String? name;
  /// Provisioning State.
  final String? provisioningState;
  /// List of resource ids created by Virtual Enclave.
  final List<String>? resourceCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Workload role assignments
  final List<RoleAssignmentItemResponse>? workloadRoleAssignments;

  /// Creates a new [GetVirtualEnclaveResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [bastionEnabled] Deploy Bastion service (True or False).
  /// [communityResourceId] Community Resource Id.
  /// [enclaveAddressSpaces] Enclave Address Spaces
  /// [enclaveDefaultSettings] Enclave default settings.
  /// [enclaveRoleAssignments] Enclave role assignments
  /// [enclaveVirtualNetwork] Virtual Network.
  /// [governedServiceList] Enclave specific policies
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [maintenanceModeConfiguration] Maintenance Mode configuration.
  /// [managedOnBehalfOfConfiguration] Managed On Behalf Of Configuration.
  /// [managedResourceGroupName] Managed resource group name.
  /// [name] The name of the resource
  /// [provisioningState] Provisioning State.
  /// [resourceCollection] List of resource ids created by Virtual Enclave.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workloadRoleAssignments] Workload role assignments
  GetVirtualEnclaveResult({
    this.azureApiVersion,
    bool? bastionEnabled,
    this.communityResourceId,
    this.enclaveAddressSpaces,
    this.enclaveDefaultSettings,
    this.enclaveRoleAssignments,
    this.enclaveVirtualNetwork,
    this.governedServiceList,
    this.id,
    this.identity,
    this.location,
    this.maintenanceModeConfiguration,
    this.managedOnBehalfOfConfiguration,
    this.managedResourceGroupName,
    this.name,
    this.provisioningState,
    this.resourceCollection,
    this.systemData,
    this.tags,
    this.type,
    this.workloadRoleAssignments,
  }) : bastionEnabled = bastionEnabled ?? false;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'bastionEnabled': ?bastionEnabled,
      'communityResourceId': ?communityResourceId,
      'enclaveAddressSpaces': ?enclaveAddressSpaces?.toMap(),
      'enclaveDefaultSettings': ?enclaveDefaultSettings?.toMap(),
      'enclaveRoleAssignments': ?(() { final guardedValue = enclaveRoleAssignments; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoleAssignmentItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enclaveVirtualNetwork': ?enclaveVirtualNetwork?.toMap(),
      'governedServiceList': ?(() { final guardedValue = governedServiceList; if (guardedValue == null) return null; return pulumi.Input.encodeList<GovernedServiceItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'maintenanceModeConfiguration': ?maintenanceModeConfiguration?.toMap(),
      'managedOnBehalfOfConfiguration': ?managedOnBehalfOfConfiguration?.toMap(),
      'managedResourceGroupName': ?managedResourceGroupName,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceCollection': ?resourceCollection,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'workloadRoleAssignments': ?(() { final guardedValue = workloadRoleAssignments; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoleAssignmentItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVirtualEnclaveResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualEnclaveResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bastionEnabled: (() { final guardedValue = map['bastionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      communityResourceId: (() { final guardedValue = map['communityResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enclaveAddressSpaces: (() { final guardedValue = map['enclaveAddressSpaces']; if (guardedValue == null) return null; return EnclaveAddressSpacesModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enclaveDefaultSettings: (() { final guardedValue = map['enclaveDefaultSettings']; if (guardedValue == null) return null; return EnclaveDefaultSettingsModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enclaveRoleAssignments: (() { final guardedValue = map['enclaveRoleAssignments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoleAssignmentItemResponse>(guardedValue, (value) => RoleAssignmentItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      enclaveVirtualNetwork: (() { final guardedValue = map['enclaveVirtualNetwork']; if (guardedValue == null) return null; return EnclaveVirtualNetworkModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      governedServiceList: (() { final guardedValue = map['governedServiceList']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GovernedServiceItemResponse>(guardedValue, (value) => GovernedServiceItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceModeConfiguration: (() { final guardedValue = map['maintenanceModeConfiguration']; if (guardedValue == null) return null; return MaintenanceModeConfigurationModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managedOnBehalfOfConfiguration: (() { final guardedValue = map['managedOnBehalfOfConfiguration']; if (guardedValue == null) return null; return ManagedOnBehalfOfConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managedResourceGroupName: (() { final guardedValue = map['managedResourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceCollection: (() { final guardedValue = map['resourceCollection']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      workloadRoleAssignments: (() { final guardedValue = map['workloadRoleAssignments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoleAssignmentItemResponse>(guardedValue, (value) => RoleAssignmentItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
