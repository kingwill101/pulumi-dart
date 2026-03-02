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
  final String adFqdn;
  /// Configurable properties that the user can set locally via the azcmagent config command, or remotely via ARM.
  final AgentConfigurationResponse agentConfiguration;
  /// The info of the machine w.r.t Agent Upgrade
  final AgentUpgradeResponse? agentUpgrade;
  /// The hybrid machine agent full version.
  final String agentVersion;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Public Key that the client provides to be used during initial resource onboarding
  final String? clientPublicKey;
  /// The metadata of the cloud environment (Azure/GCP/AWS/OCI...).
  final CloudMetadataResponse? cloudMetadata;
  /// Detected properties from the machine.
  final Map<String, String> detectedProperties;
  /// Specifies the hybrid machine display name.
  final String displayName;
  /// Specifies the DNS fully qualified display name.
  final String dnsFqdn;
  /// Specifies the Windows domain name.
  final String domainName;
  /// Details about the error state.
  final List<ErrorDetailResponse> errorDetails;
  /// Machine Extensions information (deprecated field)
  final List<MachineExtensionInstanceViewResponse>? extensions;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Identity for the resource.
  final IdentityResponse? identity;
  /// Indicates which kind of Arc machine placement on-premises, such as HCI, SCVMM or VMware etc.
  final String? kind;
  /// The time of the last status change.
  final String lastStatusChange;
  /// Specifies the License related properties for a machine.
  final LicenseProfileMachineInstanceViewResponse? licenseProfile;
  /// The geo-location where the resource lives
  final String location;
  /// Metadata pertaining to the geographic location of the resource.
  final LocationDataResponse? locationData;
  /// Specifies the hybrid machine FQDN.
  final String machineFqdn;
  /// Specifies whether any MS SQL instance is discovered on the machine.
  final String? mssqlDiscovered;
  /// The name of the resource
  final String name;
  /// Information about the network the machine is on.
  final NetworkProfileResponse networkProfile;
  /// The edition of the Operating System.
  final String osEdition;
  /// The Operating System running on the hybrid machine.
  final String osName;
  /// Specifies the operating system settings for the hybrid machine.
  final OSProfileResponse? osProfile;
  /// Specifies the Operating System product SKU.
  final String osSku;
  /// The type of Operating System (windows/linux).
  final String? osType;
  /// The version of Operating System running on the hybrid machine.
  final String osVersion;
  /// The resource id of the parent cluster (Azure HCI) this machine is assigned to, if any.
  final String? parentClusterResourceId;
  /// The resource id of the private link scope this machine is assigned to, if any.
  final String? privateLinkScopeResourceId;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// The list of extensions affiliated to the machine
  final List<MachineExtensionResponse> resources;
  /// Statuses of dependent services that are reported back to ARM.
  final ServiceStatusesResponse? serviceStatuses;
  /// The status of the hybrid machine agent.
  final String status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Specifies the hybrid machine unique ID.
  final String? vmId;
  /// Specifies the Arc Machine's unique SMBIOS ID
  final String vmUuid;

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
  GetMachineResult({
    required this.adFqdn,
    required this.agentConfiguration,
    this.agentUpgrade,
    required this.agentVersion,
    required this.azureApiVersion,
    this.clientPublicKey,
    this.cloudMetadata,
    required this.detectedProperties,
    required this.displayName,
    required this.dnsFqdn,
    required this.domainName,
    required this.errorDetails,
    this.extensions,
    required this.id,
    this.identity,
    this.kind,
    required this.lastStatusChange,
    this.licenseProfile,
    required this.location,
    this.locationData,
    required this.machineFqdn,
    this.mssqlDiscovered,
    required this.name,
    required this.networkProfile,
    required this.osEdition,
    required this.osName,
    this.osProfile,
    required this.osSku,
    this.osType,
    required this.osVersion,
    this.parentClusterResourceId,
    this.privateLinkScopeResourceId,
    required this.provisioningState,
    required this.resources,
    this.serviceStatuses,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
    this.vmId,
    required this.vmUuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adFqdn': adFqdn,
      'agentConfiguration': agentConfiguration.toMap(),
      'agentUpgrade': ?agentUpgrade == null ? null : agentUpgrade!.toMap(),
      'agentVersion': agentVersion,
      'azureApiVersion': azureApiVersion,
      'clientPublicKey': ?clientPublicKey,
      'cloudMetadata': ?cloudMetadata == null ? null : cloudMetadata!.toMap(),
      'detectedProperties': detectedProperties,
      'displayName': displayName,
      'dnsFqdn': dnsFqdn,
      'domainName': domainName,
      'errorDetails': pulumi.Input.encodeList<ErrorDetailResponse, Map<String, dynamic>>(errorDetails, (value) => value.toMap()),
      'extensions': ?extensions == null ? null : pulumi.Input.encodeList<MachineExtensionInstanceViewResponse, Map<String, dynamic>>(extensions!, (value) => value.toMap()),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'kind': ?kind,
      'lastStatusChange': lastStatusChange,
      'licenseProfile': ?licenseProfile == null ? null : licenseProfile!.toMap(),
      'location': location,
      'locationData': ?locationData == null ? null : locationData!.toMap(),
      'machineFqdn': machineFqdn,
      'mssqlDiscovered': ?mssqlDiscovered,
      'name': name,
      'networkProfile': networkProfile.toMap(),
      'osEdition': osEdition,
      'osName': osName,
      'osProfile': ?osProfile == null ? null : osProfile!.toMap(),
      'osSku': osSku,
      'osType': ?osType,
      'osVersion': osVersion,
      'parentClusterResourceId': ?parentClusterResourceId,
      'privateLinkScopeResourceId': ?privateLinkScopeResourceId,
      'provisioningState': provisioningState,
      'resources': pulumi.Input.encodeList<MachineExtensionResponse, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'serviceStatuses': ?serviceStatuses == null ? null : serviceStatuses!.toMap(),
      'status': status,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vmId': ?vmId,
      'vmUuid': vmUuid,
    };
  }

  factory GetMachineResult.fromMap(Map<String, dynamic> map) {
    return GetMachineResult(
      adFqdn: map['adFqdn'] as String,
      agentConfiguration: AgentConfigurationResponse.fromMap((map['agentConfiguration'] as Map).cast<String, dynamic>()),
      agentUpgrade: map['agentUpgrade'] == null ? null : AgentUpgradeResponse.fromMap((map['agentUpgrade']! as Map).cast<String, dynamic>()),
      agentVersion: map['agentVersion'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      clientPublicKey: map['clientPublicKey'] == null ? null : map['clientPublicKey']! as String,
      cloudMetadata: map['cloudMetadata'] == null ? null : CloudMetadataResponse.fromMap((map['cloudMetadata']! as Map).cast<String, dynamic>()),
      detectedProperties: (map['detectedProperties'] as Map).cast<String, String>(),
      displayName: map['displayName'] as String,
      dnsFqdn: map['dnsFqdn'] as String,
      domainName: map['domainName'] as String,
      errorDetails: pulumi.Input.decodeList<ErrorDetailResponse>(map['errorDetails'], (value) => ErrorDetailResponse.fromMap((value as Map).cast<String, dynamic>())),
      extensions: map['extensions'] == null ? null : pulumi.Input.decodeList<MachineExtensionInstanceViewResponse>(map['extensions']!, (value) => MachineExtensionInstanceViewResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind']! as String,
      lastStatusChange: map['lastStatusChange'] as String,
      licenseProfile: map['licenseProfile'] == null ? null : LicenseProfileMachineInstanceViewResponse.fromMap((map['licenseProfile']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      locationData: map['locationData'] == null ? null : LocationDataResponse.fromMap((map['locationData']! as Map).cast<String, dynamic>()),
      machineFqdn: map['machineFqdn'] as String,
      mssqlDiscovered: map['mssqlDiscovered'] == null ? null : map['mssqlDiscovered']! as String,
      name: map['name'] as String,
      networkProfile: NetworkProfileResponse.fromMap((map['networkProfile'] as Map).cast<String, dynamic>()),
      osEdition: map['osEdition'] as String,
      osName: map['osName'] as String,
      osProfile: map['osProfile'] == null ? null : OSProfileResponse.fromMap((map['osProfile']! as Map).cast<String, dynamic>()),
      osSku: map['osSku'] as String,
      osType: map['osType'] == null ? null : map['osType']! as String,
      osVersion: map['osVersion'] as String,
      parentClusterResourceId: map['parentClusterResourceId'] == null ? null : map['parentClusterResourceId']! as String,
      privateLinkScopeResourceId: map['privateLinkScopeResourceId'] == null ? null : map['privateLinkScopeResourceId']! as String,
      provisioningState: map['provisioningState'] as String,
      resources: pulumi.Input.decodeList<MachineExtensionResponse>(map['resources'], (value) => MachineExtensionResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceStatuses: map['serviceStatuses'] == null ? null : ServiceStatusesResponse.fromMap((map['serviceStatuses']! as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      vmId: map['vmId'] == null ? null : map['vmId']! as String,
      vmUuid: map['vmUuid'] as String,
    );
  }
}

