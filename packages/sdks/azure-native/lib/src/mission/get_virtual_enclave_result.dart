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
  final String azureApiVersion;
  /// Deploy Bastion service (True or False).
  final bool? bastionEnabled;
  /// Community Resource Id.
  final String communityResourceId;
  /// Enclave Address Spaces
  final EnclaveAddressSpacesModelResponse enclaveAddressSpaces;
  /// Enclave default settings.
  final EnclaveDefaultSettingsModelResponse? enclaveDefaultSettings;
  /// Enclave role assignments
  final List<RoleAssignmentItemResponse>? enclaveRoleAssignments;
  /// Virtual Network.
  final EnclaveVirtualNetworkModelResponse enclaveVirtualNetwork;
  /// Enclave specific policies
  final List<GovernedServiceItemResponse>? governedServiceList;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// Maintenance Mode configuration.
  final MaintenanceModeConfigurationModelResponse? maintenanceModeConfiguration;
  /// Managed On Behalf Of Configuration.
  final ManagedOnBehalfOfConfigurationResponse managedOnBehalfOfConfiguration;
  /// Managed resource group name.
  final String managedResourceGroupName;
  /// The name of the resource
  final String name;
  /// Provisioning State.
  final String provisioningState;
  /// List of resource ids created by Virtual Enclave.
  final List<String> resourceCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
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
    required this.azureApiVersion,
    this.bastionEnabled,
    required this.communityResourceId,
    required this.enclaveAddressSpaces,
    this.enclaveDefaultSettings,
    this.enclaveRoleAssignments,
    required this.enclaveVirtualNetwork,
    this.governedServiceList,
    required this.id,
    this.identity,
    required this.location,
    this.maintenanceModeConfiguration,
    required this.managedOnBehalfOfConfiguration,
    required this.managedResourceGroupName,
    required this.name,
    required this.provisioningState,
    required this.resourceCollection,
    required this.systemData,
    this.tags,
    required this.type,
    this.workloadRoleAssignments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'bastionEnabled': ?bastionEnabled,
      'communityResourceId': communityResourceId,
      'enclaveAddressSpaces': enclaveAddressSpaces.toMap(),
      'enclaveDefaultSettings': ?enclaveDefaultSettings == null ? null : enclaveDefaultSettings!.toMap(),
      'enclaveRoleAssignments': ?enclaveRoleAssignments == null ? null : pulumi.Input.encodeList<RoleAssignmentItemResponse, Map<String, dynamic>>(enclaveRoleAssignments!, (value) => value.toMap()),
      'enclaveVirtualNetwork': enclaveVirtualNetwork.toMap(),
      'governedServiceList': ?governedServiceList == null ? null : pulumi.Input.encodeList<GovernedServiceItemResponse, Map<String, dynamic>>(governedServiceList!, (value) => value.toMap()),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'maintenanceModeConfiguration': ?maintenanceModeConfiguration == null ? null : maintenanceModeConfiguration!.toMap(),
      'managedOnBehalfOfConfiguration': managedOnBehalfOfConfiguration.toMap(),
      'managedResourceGroupName': managedResourceGroupName,
      'name': name,
      'provisioningState': provisioningState,
      'resourceCollection': resourceCollection,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'workloadRoleAssignments': ?workloadRoleAssignments == null ? null : pulumi.Input.encodeList<RoleAssignmentItemResponse, Map<String, dynamic>>(workloadRoleAssignments!, (value) => value.toMap()),
    };
  }

  factory GetVirtualEnclaveResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualEnclaveResult(
      azureApiVersion: map['azureApiVersion'] as String,
      bastionEnabled: map['bastionEnabled'] == null ? null : map['bastionEnabled']! as bool,
      communityResourceId: map['communityResourceId'] as String,
      enclaveAddressSpaces: EnclaveAddressSpacesModelResponse.fromMap((map['enclaveAddressSpaces'] as Map).cast<String, dynamic>()),
      enclaveDefaultSettings: map['enclaveDefaultSettings'] == null ? null : EnclaveDefaultSettingsModelResponse.fromMap((map['enclaveDefaultSettings']! as Map).cast<String, dynamic>()),
      enclaveRoleAssignments: map['enclaveRoleAssignments'] == null ? null : pulumi.Input.decodeList<RoleAssignmentItemResponse>(map['enclaveRoleAssignments']!, (value) => RoleAssignmentItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      enclaveVirtualNetwork: EnclaveVirtualNetworkModelResponse.fromMap((map['enclaveVirtualNetwork'] as Map).cast<String, dynamic>()),
      governedServiceList: map['governedServiceList'] == null ? null : pulumi.Input.decodeList<GovernedServiceItemResponse>(map['governedServiceList']!, (value) => GovernedServiceItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ManagedServiceIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      maintenanceModeConfiguration: map['maintenanceModeConfiguration'] == null ? null : MaintenanceModeConfigurationModelResponse.fromMap((map['maintenanceModeConfiguration']! as Map).cast<String, dynamic>()),
      managedOnBehalfOfConfiguration: ManagedOnBehalfOfConfigurationResponse.fromMap((map['managedOnBehalfOfConfiguration'] as Map).cast<String, dynamic>()),
      managedResourceGroupName: map['managedResourceGroupName'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceCollection: (map['resourceCollection'] as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      workloadRoleAssignments: map['workloadRoleAssignments'] == null ? null : pulumi.Input.decodeList<RoleAssignmentItemResponse>(map['workloadRoleAssignments']!, (value) => RoleAssignmentItemResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

