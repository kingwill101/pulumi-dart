// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_configuration_response.dart';
import 'agent_upgrade_response.dart';
import 'cloud_metadata_response.dart';
import 'error_detail_response.dart';
import 'identity_response.dart';
import 'license_profile_machine_instance_view_response.dart';
import 'location_data_response.dart';
import 'machine_extension_instance_view_response.dart';
import 'machine_extension_response.dart';
import 'network_profile_response.dart';
import 'osprofile_response.dart';
import 'service_statuses_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMachine.
class GetMachineResult {
  /// Specifies the AD fully qualified display name.
  final String? adFqdn;
  /// Configurable properties that the user can set locally via the azcmagent config command, or remotely via ARM.
  final AgentConfigurationResponse? agentConfiguration;
  /// The info of the machine w.r.t Agent Upgrade
  final AgentUpgradeResponse? agentUpgrade;
  /// The hybrid machine agent full version.
  final String? agentVersion;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Public Key that the client provides to be used during initial resource onboarding
  final String? clientPublicKey;
  /// The metadata of the cloud environment (Azure/GCP/AWS/OCI...).
  final CloudMetadataResponse? cloudMetadata;
  /// Detected properties from the machine.
  final Map<String, String>? detectedProperties;
  /// Specifies the hybrid machine display name.
  final String? displayName;
  /// Specifies the DNS fully qualified display name.
  final String? dnsFqdn;
  /// Specifies the Windows domain name.
  final String? domainName;
  /// Details about the error state.
  final List<ErrorDetailResponse>? errorDetails;
  /// Machine Extensions information (deprecated field)
  final List<MachineExtensionInstanceViewResponse>? extensions;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// Indicates which kind of Arc machine placement on-premises, such as HCI, SCVMM or VMware etc.
  final String? kind;
  /// The time of the last status change.
  final String? lastStatusChange;
  /// Specifies the License related properties for a machine.
  final LicenseProfileMachineInstanceViewResponse? licenseProfile;
  /// The geo-location where the resource lives
  final String? location;
  /// Metadata pertaining to the geographic location of the resource.
  final LocationDataResponse? locationData;
  /// Specifies the hybrid machine FQDN.
  final String? machineFqdn;
  /// Specifies whether any MS SQL instance is discovered on the machine.
  final String? mssqlDiscovered;
  /// The name of the resource
  final String? name;
  /// Information about the network the machine is on.
  final NetworkProfileResponse? networkProfile;
  /// The edition of the Operating System.
  final String? osEdition;
  /// The Operating System running on the hybrid machine.
  final String? osName;
  /// Specifies the operating system settings for the hybrid machine.
  final OSProfileResponse? osProfile;
  /// Specifies the Operating System product SKU.
  final String? osSku;
  /// The type of Operating System (windows/linux).
  final String? osType;
  /// The version of Operating System running on the hybrid machine.
  final String? osVersion;
  /// The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  final String? parentClusterResourceId;
  /// The resource id of the private link scope this machine is assigned to, if any.
  final String? privateLinkScopeResourceId;
  /// The provisioning state, which only appears in the response.
  final String? provisioningState;
  /// The list of extensions affiliated to the machine
  final List<MachineExtensionResponse>? resources;
  /// Statuses of dependent services that are reported back to ARM.
  final ServiceStatusesResponse? serviceStatuses;
  /// The status of the hybrid machine agent.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Specifies the hybrid machine unique ID.
  final String? vmId;
  /// Specifies the Arc Machine's unique SMBIOS ID
  final String? vmUuid;

  /// Creates a new [GetMachineResult].
  /// [adFqdn] Specifies the AD fully qualified display name.
  /// [agentConfiguration] Configurable properties that the user can set locally via the azcmagent config command, or remotely via ARM.
  /// [agentUpgrade] The info of the machine w.r.t Agent Upgrade
  /// [agentVersion] The hybrid machine agent full version.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clientPublicKey] Public Key that the client provides to be used during initial resource onboarding
  /// [cloudMetadata] The metadata of the cloud environment (Azure/GCP/AWS/OCI...).
  /// [detectedProperties] Detected properties from the machine.
  /// [displayName] Specifies the hybrid machine display name.
  /// [dnsFqdn] Specifies the DNS fully qualified display name.
  /// [domainName] Specifies the Windows domain name.
  /// [errorDetails] Details about the error state.
  /// [extensions] Machine Extensions information (deprecated field)
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] Identity for the resource.
  /// [kind] Indicates which kind of Arc machine placement on-premises, such as HCI, SCVMM or VMware etc.
  /// [lastStatusChange] The time of the last status change.
  /// [licenseProfile] Specifies the License related properties for a machine.
  /// [location] The geo-location where the resource lives
  /// [locationData] Metadata pertaining to the geographic location of the resource.
  /// [machineFqdn] Specifies the hybrid machine FQDN.
  /// [mssqlDiscovered] Specifies whether any MS SQL instance is discovered on the machine.
  /// [name] The name of the resource
  /// [networkProfile] Information about the network the machine is on.
  /// [osEdition] The edition of the Operating System.
  /// [osName] The Operating System running on the hybrid machine.
  /// [osProfile] Specifies the operating system settings for the hybrid machine.
  /// [osSku] Specifies the Operating System product SKU.
  /// [osType] The type of Operating System (windows/linux).
  /// [osVersion] The version of Operating System running on the hybrid machine.
  /// [parentClusterResourceId] The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  /// [privateLinkScopeResourceId] The resource id of the private link scope this machine is assigned to, if any.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [resources] The list of extensions affiliated to the machine
  /// [serviceStatuses] Statuses of dependent services that are reported back to ARM.
  /// [status] The status of the hybrid machine agent.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [vmId] Specifies the hybrid machine unique ID.
  /// [vmUuid] Specifies the Arc Machine's unique SMBIOS ID
  const GetMachineResult({
    this.adFqdn,
    this.agentConfiguration,
    this.agentUpgrade,
    this.agentVersion,
    this.azureApiVersion,
    this.clientPublicKey,
    this.cloudMetadata,
    this.detectedProperties,
    this.displayName,
    this.dnsFqdn,
    this.domainName,
    this.errorDetails,
    this.extensions,
    this.id,
    this.identity,
    this.kind,
    this.lastStatusChange,
    this.licenseProfile,
    this.location,
    this.locationData,
    this.machineFqdn,
    this.mssqlDiscovered,
    this.name,
    this.networkProfile,
    this.osEdition,
    this.osName,
    this.osProfile,
    this.osSku,
    this.osType,
    this.osVersion,
    this.parentClusterResourceId,
    this.privateLinkScopeResourceId,
    this.provisioningState,
    this.resources,
    this.serviceStatuses,
    this.status,
    this.systemData,
    this.tags,
    this.type,
    this.vmId,
    this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adFqdn': ?adFqdn,
      'agentConfiguration': ?agentConfiguration?.toMap(),
      'agentUpgrade': ?agentUpgrade?.toMap(),
      'agentVersion': ?agentVersion,
      'azureApiVersion': ?azureApiVersion,
      'clientPublicKey': ?clientPublicKey,
      'cloudMetadata': ?cloudMetadata?.toMap(),
      'detectedProperties': ?detectedProperties,
      'displayName': ?displayName,
      'dnsFqdn': ?dnsFqdn,
      'domainName': ?domainName,
      'errorDetails': ?(() { final guardedValue = errorDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<ErrorDetailResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'extensions': ?(() { final guardedValue = extensions; if (guardedValue == null) return null; return pulumi.Input.encodeList<MachineExtensionInstanceViewResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'kind': ?kind,
      'lastStatusChange': ?lastStatusChange,
      'licenseProfile': ?licenseProfile?.toMap(),
      'location': ?location,
      'locationData': ?locationData?.toMap(),
      'machineFqdn': ?machineFqdn,
      'mssqlDiscovered': ?mssqlDiscovered,
      'name': ?name,
      'networkProfile': ?networkProfile?.toMap(),
      'osEdition': ?osEdition,
      'osName': ?osName,
      'osProfile': ?osProfile?.toMap(),
      'osSku': ?osSku,
      'osType': ?osType,
      'osVersion': ?osVersion,
      'parentClusterResourceId': ?parentClusterResourceId,
      'privateLinkScopeResourceId': ?privateLinkScopeResourceId,
      'provisioningState': ?provisioningState,
      'resources': ?(() { final guardedValue = resources; if (guardedValue == null) return null; return pulumi.Input.encodeList<MachineExtensionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceStatuses': ?serviceStatuses?.toMap(),
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'vmId': ?vmId,
      'vmUuid': ?vmUuid,
    };
  }

  factory GetMachineResult.fromMap(Map<String, dynamic> map) {
    return GetMachineResult(
      adFqdn: (() { final guardedValue = map['adFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      agentConfiguration: (() { final guardedValue = map['agentConfiguration']; if (guardedValue == null) return null; return AgentConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      agentUpgrade: (() { final guardedValue = map['agentUpgrade']; if (guardedValue == null) return null; return AgentUpgradeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      agentVersion: (() { final guardedValue = map['agentVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientPublicKey: (() { final guardedValue = map['clientPublicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudMetadata: (() { final guardedValue = map['cloudMetadata']; if (guardedValue == null) return null; return CloudMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      detectedProperties: (() { final guardedValue = map['detectedProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsFqdn: (() { final guardedValue = map['dnsFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      errorDetails: (() { final guardedValue = map['errorDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ErrorDetailResponse>(guardedValue, (value) => ErrorDetailResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MachineExtensionInstanceViewResponse>(guardedValue, (value) => MachineExtensionInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastStatusChange: (() { final guardedValue = map['lastStatusChange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseProfile: (() { final guardedValue = map['licenseProfile']; if (guardedValue == null) return null; return LicenseProfileMachineInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locationData: (() { final guardedValue = map['locationData']; if (guardedValue == null) return null; return LocationDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      machineFqdn: (() { final guardedValue = map['machineFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mssqlDiscovered: (() { final guardedValue = map['mssqlDiscovered']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osEdition: (() { final guardedValue = map['osEdition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osName: (() { final guardedValue = map['osName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osProfile: (() { final guardedValue = map['osProfile']; if (guardedValue == null) return null; return OSProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      osSku: (() { final guardedValue = map['osSku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentClusterResourceId: (() { final guardedValue = map['parentClusterResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateLinkScopeResourceId: (() { final guardedValue = map['privateLinkScopeResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: (() { final guardedValue = map['resources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MachineExtensionResponse>(guardedValue, (value) => MachineExtensionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceStatuses: (() { final guardedValue = map['serviceStatuses']; if (guardedValue == null) return null; return ServiceStatusesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmId: (() { final guardedValue = map['vmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmUuid: (() { final guardedValue = map['vmUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
