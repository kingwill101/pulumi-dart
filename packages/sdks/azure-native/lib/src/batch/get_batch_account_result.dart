// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_storage_properties_response.dart';
import 'batch_account_identity_response.dart';
import 'encryption_properties_response.dart';
import 'key_vault_reference_response.dart';
import 'network_profile_response.dart';
import 'private_endpoint_connection_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_family_core_quota_response.dart';

/// Result data returned by getBatchAccount.
class GetBatchAccountResult {
  /// The account endpoint used to interact with the Batch service.
  final String? accountEndpoint;
  /// The active job and job schedule quota for the Batch account.
  final int? activeJobAndJobScheduleQuota;
  /// List of allowed authentication modes for the Batch account that can be used to authenticate with the data plane. This does not affect authentication with the control plane.
  final List<String>? allowedAuthenticationModes;
  /// Contains information about the auto-storage account associated with a Batch account.
  final AutoStoragePropertiesResponse? autoStorage;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// For accounts with PoolAllocationMode set to UserSubscription, quota is managed on the subscription so this value is not returned.
  final int? dedicatedCoreQuota;
  /// A list of the dedicated core quota per Virtual Machine family for the Batch account. For accounts with PoolAllocationMode set to UserSubscription, quota is managed on the subscription so this value is not returned.
  final List<VirtualMachineFamilyCoreQuotaResponse>? dedicatedCoreQuotaPerVMFamily;
  /// If this flag is true, dedicated core quota is enforced via both the dedicatedCoreQuotaPerVMFamily and dedicatedCoreQuota properties on the account. If this flag is false, dedicated core quota is enforced only via the dedicatedCoreQuota property on the account and does not consider Virtual Machine family.
  final bool? dedicatedCoreQuotaPerVMFamilyEnforced;
  /// Configures how customer data is encrypted inside the Batch account. By default, accounts are encrypted using a Microsoft managed key. For additional control, a customer-managed key can be used instead.
  final EncryptionPropertiesResponse? encryption;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The identity of the Batch account.
  final BatchAccountIdentityResponse? identity;
  /// Identifies the Azure key vault associated with a Batch account.
  final KeyVaultReferenceResponse? keyVaultReference;
  /// The geo-location where the resource lives
  final String? location;
  /// For accounts with PoolAllocationMode set to UserSubscription, quota is managed on the subscription so this value is not returned.
  final int? lowPriorityCoreQuota;
  /// The name of the resource
  final String? name;
  /// The network profile only takes effect when publicNetworkAccess is enabled.
  final NetworkProfileResponse? networkProfile;
  /// The endpoint used by compute node to connect to the Batch node management service.
  final String? nodeManagementEndpoint;
  /// The allocation mode for creating pools in the Batch account.
  final String? poolAllocationMode;
  /// The pool quota for the Batch account.
  final int? poolQuota;
  /// List of private endpoint connections associated with the Batch account
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The provisioned state of the resource
  final String? provisioningState;
  /// The network access type for operating on the resources in the Batch account.
  final String? publicNetworkAccess;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetBatchAccountResult].
  /// [accountEndpoint] The account endpoint used to interact with the Batch service.
  /// [activeJobAndJobScheduleQuota] The active job and job schedule quota for the Batch account.
  /// [allowedAuthenticationModes] List of allowed authentication modes for the Batch account that can be used to authenticate with the data plane. This does not affect authentication with the control plane.
  /// [autoStorage] Contains information about the auto-storage account associated with a Batch account.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dedicatedCoreQuota] For accounts with PoolAllocationMode set to UserSubscription, quota is managed on the subscription so this value is not returned.
  /// [dedicatedCoreQuotaPerVMFamily] A list of the dedicated core quota per Virtual Machine family for the Batch account. For accounts with PoolAllocationMode set to UserSubscription, quota is managed on the subscription so this value is not returned.
  /// [dedicatedCoreQuotaPerVMFamilyEnforced] If this flag is true, dedicated core quota is enforced via both the dedicatedCoreQuotaPerVMFamily and dedicatedCoreQuota properties on the account. If this flag is false, dedicated core quota is enforced only via the dedicatedCoreQuota property on the account and does not consider Virtual Machine family.
  /// [encryption] Configures how customer data is encrypted inside the Batch account. By default, accounts are encrypted using a Microsoft managed key. For additional control, a customer-managed key can be used instead.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The identity of the Batch account.
  /// [keyVaultReference] Identifies the Azure key vault associated with a Batch account.
  /// [location] The geo-location where the resource lives
  /// [lowPriorityCoreQuota] For accounts with PoolAllocationMode set to UserSubscription, quota is managed on the subscription so this value is not returned.
  /// [name] The name of the resource
  /// [networkProfile] The network profile only takes effect when publicNetworkAccess is enabled.
  /// [nodeManagementEndpoint] The endpoint used by compute node to connect to the Batch node management service.
  /// [poolAllocationMode] The allocation mode for creating pools in the Batch account.
  /// [poolQuota] The pool quota for the Batch account.
  /// [privateEndpointConnections] List of private endpoint connections associated with the Batch account
  /// [provisioningState] The provisioned state of the resource
  /// [publicNetworkAccess] The network access type for operating on the resources in the Batch account.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBatchAccountResult({
    this.accountEndpoint,
    this.activeJobAndJobScheduleQuota,
    this.allowedAuthenticationModes,
    this.autoStorage,
    this.azureApiVersion,
    this.dedicatedCoreQuota,
    this.dedicatedCoreQuotaPerVMFamily,
    this.dedicatedCoreQuotaPerVMFamilyEnforced,
    this.encryption,
    this.id,
    this.identity,
    this.keyVaultReference,
    this.location,
    this.lowPriorityCoreQuota,
    this.name,
    this.networkProfile,
    this.nodeManagementEndpoint,
    this.poolAllocationMode,
    this.poolQuota,
    this.privateEndpointConnections,
    this.provisioningState,
    String? publicNetworkAccess,
    this.systemData,
    this.tags,
    this.type,
  }) : publicNetworkAccess = publicNetworkAccess ?? 'Enabled';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEndpoint': ?accountEndpoint,
      'activeJobAndJobScheduleQuota': ?activeJobAndJobScheduleQuota,
      'allowedAuthenticationModes': ?allowedAuthenticationModes,
      'autoStorage': ?autoStorage?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'dedicatedCoreQuota': ?dedicatedCoreQuota,
      'dedicatedCoreQuotaPerVMFamily': ?(() { final guardedValue = dedicatedCoreQuotaPerVMFamily; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualMachineFamilyCoreQuotaResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dedicatedCoreQuotaPerVMFamilyEnforced': ?dedicatedCoreQuotaPerVMFamilyEnforced,
      'encryption': ?encryption?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'keyVaultReference': ?keyVaultReference?.toMap(),
      'location': ?location,
      'lowPriorityCoreQuota': ?lowPriorityCoreQuota,
      'name': ?name,
      'networkProfile': ?networkProfile?.toMap(),
      'nodeManagementEndpoint': ?nodeManagementEndpoint,
      'poolAllocationMode': ?poolAllocationMode,
      'poolQuota': ?poolQuota,
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetBatchAccountResult.fromMap(Map<String, dynamic> map) {
    return GetBatchAccountResult(
      accountEndpoint: (() { final guardedValue = map['accountEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      activeJobAndJobScheduleQuota: (() { final guardedValue = map['activeJobAndJobScheduleQuota']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      allowedAuthenticationModes: (() { final guardedValue = map['allowedAuthenticationModes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      autoStorage: (() { final guardedValue = map['autoStorage']; if (guardedValue == null) return null; return AutoStoragePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dedicatedCoreQuota: (() { final guardedValue = map['dedicatedCoreQuota']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      dedicatedCoreQuotaPerVMFamily: (() { final guardedValue = map['dedicatedCoreQuotaPerVMFamily']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualMachineFamilyCoreQuotaResponse>(guardedValue, (value) => VirtualMachineFamilyCoreQuotaResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      dedicatedCoreQuotaPerVMFamilyEnforced: (() { final guardedValue = map['dedicatedCoreQuotaPerVMFamilyEnforced']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return EncryptionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return BatchAccountIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      keyVaultReference: (() { final guardedValue = map['keyVaultReference']; if (guardedValue == null) return null; return KeyVaultReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lowPriorityCoreQuota: (() { final guardedValue = map['lowPriorityCoreQuota']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkProfile: (() { final guardedValue = map['networkProfile']; if (guardedValue == null) return null; return NetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      nodeManagementEndpoint: (() { final guardedValue = map['nodeManagementEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolAllocationMode: (() { final guardedValue = map['poolAllocationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      poolQuota: (() { final guardedValue = map['poolQuota']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
