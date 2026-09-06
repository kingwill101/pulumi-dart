// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_desired_properties_response.dart';
import 'cluster_reported_properties_response.dart';
import 'isolated_vm_attestation_configuration_response.dart';
import 'log_collection_properties_response.dart';
import 'remote_support_properties_response.dart';
import 'software_assurance_properties_response.dart';
import 'system_data_response.dart';
import 'user_assigned_identity_response.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// Object id of cluster AAD identity.
  final String? aadApplicationObjectId;
  /// App id of cluster AAD identity.
  final String? aadClientId;
  /// Id of cluster identity service principal.
  final String? aadServicePrincipalObjectId;
  /// Tenant id of cluster AAD identity.
  final String? aadTenantId;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Type of billing applied to the resource.
  final String? billingModel;
  /// Unique, immutable resource id.
  final String? cloudId;
  /// Endpoint configured for management from the Azure portal.
  final String? cloudManagementEndpoint;
  /// Overall connectivity status for the cluster resource.
  final String? connectivityStatus;
  /// Desired properties of the cluster.
  final ClusterDesiredPropertiesResponse? desiredProperties;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Attestation configurations for isolated VM (e.g. TVM, CVM) of the cluster.
  final IsolatedVmAttestationConfigurationResponse? isolatedVmAttestationConfiguration;
  /// Most recent billing meter timestamp.
  final String? lastBillingTimestamp;
  /// Most recent cluster sync timestamp.
  final String? lastSyncTimestamp;
  /// The geo-location where the resource lives
  final String? location;
  /// Log Collection properties of the cluster.
  final LogCollectionPropertiesResponse? logCollectionProperties;
  /// The name of the resource
  final String? name;
  /// The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  final String? principalId;
  /// Provisioning state.
  final String? provisioningState;
  /// First cluster sync timestamp.
  final String? registrationTimestamp;
  /// RemoteSupport properties of the cluster.
  final RemoteSupportPropertiesResponse? remoteSupportProperties;
  /// Properties reported by cluster agent.
  final ClusterReportedPropertiesResponse? reportedProperties;
  /// Object id of RP Service Principal
  final String? resourceProviderObjectId;
  /// Region specific DataPath Endpoint of the cluster.
  final String? serviceEndpoint;
  /// Software Assurance properties of the cluster.
  final SoftwareAssurancePropertiesResponse? softwareAssuranceProperties;
  /// Status of the cluster agent.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  final String? tenantId;
  /// Number of days remaining in the trial period.
  final double? trialDaysRemaining;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  final Map<String, UserAssignedIdentityResponse>? userAssignedIdentities;

  /// Creates a new [GetClusterResult].
  /// [aadApplicationObjectId] Object id of cluster AAD identity.
  /// [aadClientId] App id of cluster AAD identity.
  /// [aadServicePrincipalObjectId] Id of cluster identity service principal.
  /// [aadTenantId] Tenant id of cluster AAD identity.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingModel] Type of billing applied to the resource.
  /// [cloudId] Unique, immutable resource id.
  /// [cloudManagementEndpoint] Endpoint configured for management from the Azure portal.
  /// [connectivityStatus] Overall connectivity status for the cluster resource.
  /// [desiredProperties] Desired properties of the cluster.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isolatedVmAttestationConfiguration] Attestation configurations for isolated VM (e.g. TVM, CVM) of the cluster.
  /// [lastBillingTimestamp] Most recent billing meter timestamp.
  /// [lastSyncTimestamp] Most recent cluster sync timestamp.
  /// [location] The geo-location where the resource lives
  /// [logCollectionProperties] Log Collection properties of the cluster.
  /// [name] The name of the resource
  /// [principalId] The service principal ID of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [provisioningState] Provisioning state.
  /// [registrationTimestamp] First cluster sync timestamp.
  /// [remoteSupportProperties] RemoteSupport properties of the cluster.
  /// [reportedProperties] Properties reported by cluster agent.
  /// [resourceProviderObjectId] Object id of RP Service Principal
  /// [serviceEndpoint] Region specific DataPath Endpoint of the cluster.
  /// [softwareAssuranceProperties] Software Assurance properties of the cluster.
  /// [status] Status of the cluster agent.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [tenantId] The tenant ID of the system assigned identity. This property will only be provided for a system assigned identity.
  /// [trialDaysRemaining] Number of days remaining in the trial period.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userAssignedIdentities] The set of user assigned identities associated with the resource. The userAssignedIdentities dictionary keys will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}. The dictionary values can be empty objects ({}) in requests.
  const GetClusterResult({
    this.aadApplicationObjectId,
    this.aadClientId,
    this.aadServicePrincipalObjectId,
    this.aadTenantId,
    this.azureApiVersion,
    this.billingModel,
    this.cloudId,
    this.cloudManagementEndpoint,
    this.connectivityStatus,
    this.desiredProperties,
    this.id,
    this.isolatedVmAttestationConfiguration,
    this.lastBillingTimestamp,
    this.lastSyncTimestamp,
    this.location,
    this.logCollectionProperties,
    this.name,
    this.principalId,
    this.provisioningState,
    this.registrationTimestamp,
    this.remoteSupportProperties,
    this.reportedProperties,
    this.resourceProviderObjectId,
    this.serviceEndpoint,
    this.softwareAssuranceProperties,
    this.status,
    this.systemData,
    this.tags,
    this.tenantId,
    this.trialDaysRemaining,
    this.type,
    this.userAssignedIdentities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadApplicationObjectId': ?aadApplicationObjectId,
      'aadClientId': ?aadClientId,
      'aadServicePrincipalObjectId': ?aadServicePrincipalObjectId,
      'aadTenantId': ?aadTenantId,
      'azureApiVersion': ?azureApiVersion,
      'billingModel': ?billingModel,
      'cloudId': ?cloudId,
      'cloudManagementEndpoint': ?cloudManagementEndpoint,
      'connectivityStatus': ?connectivityStatus,
      'desiredProperties': ?desiredProperties?.toMap(),
      'id': ?id,
      'isolatedVmAttestationConfiguration': ?isolatedVmAttestationConfiguration?.toMap(),
      'lastBillingTimestamp': ?lastBillingTimestamp,
      'lastSyncTimestamp': ?lastSyncTimestamp,
      'location': ?location,
      'logCollectionProperties': ?logCollectionProperties?.toMap(),
      'name': ?name,
      'principalId': ?principalId,
      'provisioningState': ?provisioningState,
      'registrationTimestamp': ?registrationTimestamp,
      'remoteSupportProperties': ?remoteSupportProperties?.toMap(),
      'reportedProperties': ?reportedProperties?.toMap(),
      'resourceProviderObjectId': ?resourceProviderObjectId,
      'serviceEndpoint': ?serviceEndpoint,
      'softwareAssuranceProperties': ?softwareAssuranceProperties?.toMap(),
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'tenantId': ?tenantId,
      'trialDaysRemaining': ?trialDaysRemaining,
      'type': ?type,
      'userAssignedIdentities': ?(() { final guardedValue = userAssignedIdentities; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<UserAssignedIdentityResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      aadApplicationObjectId: (() { final guardedValue = map['aadApplicationObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aadClientId: (() { final guardedValue = map['aadClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aadServicePrincipalObjectId: (() { final guardedValue = map['aadServicePrincipalObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aadTenantId: (() { final guardedValue = map['aadTenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      billingModel: (() { final guardedValue = map['billingModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudId: (() { final guardedValue = map['cloudId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudManagementEndpoint: (() { final guardedValue = map['cloudManagementEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectivityStatus: (() { final guardedValue = map['connectivityStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      desiredProperties: (() { final guardedValue = map['desiredProperties']; if (guardedValue == null) return null; return ClusterDesiredPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isolatedVmAttestationConfiguration: (() { final guardedValue = map['isolatedVmAttestationConfiguration']; if (guardedValue == null) return null; return IsolatedVmAttestationConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lastBillingTimestamp: (() { final guardedValue = map['lastBillingTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastSyncTimestamp: (() { final guardedValue = map['lastSyncTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logCollectionProperties: (() { final guardedValue = map['logCollectionProperties']; if (guardedValue == null) return null; return LogCollectionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      registrationTimestamp: (() { final guardedValue = map['registrationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      remoteSupportProperties: (() { final guardedValue = map['remoteSupportProperties']; if (guardedValue == null) return null; return RemoteSupportPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      reportedProperties: (() { final guardedValue = map['reportedProperties']; if (guardedValue == null) return null; return ClusterReportedPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceProviderObjectId: (() { final guardedValue = map['resourceProviderObjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceEndpoint: (() { final guardedValue = map['serviceEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      softwareAssuranceProperties: (() { final guardedValue = map['softwareAssuranceProperties']; if (guardedValue == null) return null; return SoftwareAssurancePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trialDaysRemaining: (() { final guardedValue = map['trialDaysRemaining']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userAssignedIdentities: (() { final guardedValue = map['userAssignedIdentities']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<UserAssignedIdentityResponse>(guardedValue, (value) => UserAssignedIdentityResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
