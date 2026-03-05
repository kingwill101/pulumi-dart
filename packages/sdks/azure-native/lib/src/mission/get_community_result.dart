// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_settings_response.dart';
import 'governed_service_item_response.dart';
import 'maintenance_mode_configuration_model_response.dart';
import 'managed_on_behalf_of_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'role_assignment_item_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCommunity.
class GetCommunityResult {
  /// Address Space.
  final String? addressSpace;
  /// Approval requirements for various actions on the community's resources.
  final ApprovalSettingsResponse? approvalSettings;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Community role assignments
  final List<RoleAssignmentItemResponse>? communityRoleAssignments;
  /// DNS Servers.
  final List<String>? dnsServers;
  /// SKU of the community's Azure Firewall (Basic, Standard, Premium). Standard is the default
  final String? firewallSku;
  /// List of services governed by a community.
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
  /// Policy override setting for the community. Specifies whether to apply enclave-specific policies or disable policy enforcement.
  final String? policyOverride;
  /// Provisioning State.
  final String provisioningState;
  /// List of resource ids created by communities.
  final List<String> resourceCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCommunityResult].
  /// [addressSpace] Address Space.
  /// [approvalSettings] Approval requirements for various actions on the community's resources.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [communityRoleAssignments] Community role assignments
  /// [dnsServers] DNS Servers.
  /// [firewallSku] SKU of the community's Azure Firewall (Basic, Standard, Premium). Standard is the default
  /// [governedServiceList] List of services governed by a community.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [maintenanceModeConfiguration] Maintenance Mode configuration.
  /// [managedOnBehalfOfConfiguration] Managed On Behalf Of Configuration.
  /// [managedResourceGroupName] Managed resource group name.
  /// [name] The name of the resource
  /// [policyOverride] Policy override setting for the community. Specifies whether to apply enclave-specific policies or disable policy enforcement.
  /// [provisioningState] Provisioning State.
  /// [resourceCollection] List of resource ids created by communities.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetCommunityResult({
    this.addressSpace,
    this.approvalSettings,
    required this.azureApiVersion,
    this.communityRoleAssignments,
    this.dnsServers,
    this.firewallSku,
    this.governedServiceList,
    required this.id,
    this.identity,
    required this.location,
    this.maintenanceModeConfiguration,
    required this.managedOnBehalfOfConfiguration,
    required this.managedResourceGroupName,
    required this.name,
    this.policyOverride,
    required this.provisioningState,
    required this.resourceCollection,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': ?addressSpace,
      'approvalSettings': ?approvalSettings?.toMap(),
      'azureApiVersion': azureApiVersion,
      'communityRoleAssignments': ?(() { final guardedValue = communityRoleAssignments; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoleAssignmentItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dnsServers': ?dnsServers,
      'firewallSku': ?firewallSku,
      'governedServiceList': ?(() { final guardedValue = governedServiceList; if (guardedValue == null) return null; return pulumi.Input.encodeList<GovernedServiceItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'maintenanceModeConfiguration': ?maintenanceModeConfiguration?.toMap(),
      'managedOnBehalfOfConfiguration': managedOnBehalfOfConfiguration.toMap(),
      'managedResourceGroupName': managedResourceGroupName,
      'name': name,
      'policyOverride': ?policyOverride,
      'provisioningState': provisioningState,
      'resourceCollection': resourceCollection,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetCommunityResult.fromMap(Map<String, dynamic> map) {
    return GetCommunityResult(
      addressSpace: (() { final guardedValue = map['addressSpace']; if (guardedValue == null) return null; return guardedValue as String; })(),
      approvalSettings: (() { final guardedValue = map['approvalSettings']; if (guardedValue == null) return null; return ApprovalSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      communityRoleAssignments: (() { final guardedValue = map['communityRoleAssignments']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoleAssignmentItemResponse>(guardedValue, (value) => RoleAssignmentItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      dnsServers: (() { final guardedValue = map['dnsServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      firewallSku: (() { final guardedValue = map['firewallSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      governedServiceList: (() { final guardedValue = map['governedServiceList']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GovernedServiceItemResponse>(guardedValue, (value) => GovernedServiceItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      maintenanceModeConfiguration: (() { final guardedValue = map['maintenanceModeConfiguration']; if (guardedValue == null) return null; return MaintenanceModeConfigurationModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      managedOnBehalfOfConfiguration: ManagedOnBehalfOfConfigurationResponse.fromMap((map['managedOnBehalfOfConfiguration']! as Map).cast<String, dynamic>()),
      managedResourceGroupName: map['managedResourceGroupName'] as String,
      name: map['name'] as String,
      policyOverride: (() { final guardedValue = map['policyOverride']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      resourceCollection: (map['resourceCollection'] as List).cast<String>(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

