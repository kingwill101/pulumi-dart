// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytical_storage_configuration_response.dart';
import 'api_properties_response.dart';
import 'capability_response.dart';
import 'capacity_response.dart';
import 'consistency_policy_response.dart';
import 'continuous_mode_backup_policy_response.dart';
import 'cors_policy_response.dart';
import 'database_account_keys_metadata_response.dart';
import 'failover_policy_response.dart';
import 'ip_address_or_range_response.dart';
import 'location_response.dart';
import 'managed_service_identity_response.dart';
import 'private_endpoint_connection_response.dart';
import 'restore_parameters_response.dart';
import 'system_data_response.dart';
import 'virtual_network_rule_response.dart';

/// Result data returned by getDatabaseAccount.
class GetDatabaseAccountResult {
  /// Analytical storage specific properties.
  final AnalyticalStorageConfigurationResponse? analyticalStorageConfiguration;
  /// API specific properties.
  final ApiPropertiesResponse? apiProperties;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The object representing the policy for taking backups on an account.
  final ContinuousModeBackupPolicyResponse? backupPolicy;
  /// List of Cosmos DB capabilities for the account
  final List<CapabilityResponse>? capabilities;
  /// The object that represents all properties related to capacity enforcement on an account.
  final CapacityResponse? capacity;
  /// The cassandra connector offer type for the Cosmos DB database C* account.
  final String? connectorOffer;
  /// The consistency policy for the Cosmos DB database account.
  final ConsistencyPolicyResponse? consistencyPolicy;
  /// The CORS policy for the Cosmos DB database account.
  final List<CorsPolicyResponse>? cors;
  /// Enum to indicate the mode of account creation.
  final String? createMode;
  /// Indicates the status of the Customer Managed Key feature on the account. In case there are errors, the property provides troubleshooting guidance.
  final String? customerManagedKeyStatus;
  /// The offer type for the Cosmos DB database account. Default value: Standard.
  final String databaseAccountOfferType;
  /// The default identity for accessing key vault used in features like customer managed keys. The default identity needs to be explicitly set by the users. It can be "FirstPartyIdentity", "SystemAssignedIdentity" and more.
  final String? defaultIdentity;
  /// Enum to indicate default Priority Level of request for Priority Based Execution.
  final String? defaultPriorityLevel;
  /// Disable write operations on metadata resources (databases, containers, throughput) via account keys
  final bool? disableKeyBasedMetadataWriteAccess;
  /// Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  final bool? disableLocalAuth;
  /// The connection endpoint for the Cosmos DB database account.
  final String documentEndpoint;
  /// Flag to indicate whether to enable storage analytics.
  final bool? enableAnalyticalStorage;
  /// Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage. Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account.
  final bool? enableAutomaticFailover;
  /// Flag to indicate enabling/disabling of Burst Capacity feature on the account
  final bool? enableBurstCapacity;
  /// Enables the cassandra connector on the Cosmos DB C* account
  final bool? enableCassandraConnector;
  /// Flag to indicate whether Free Tier is enabled.
  final bool? enableFreeTier;
  /// Enables the account to write in multiple locations
  final bool? enableMultipleWriteLocations;
  /// Flag to indicate enabling/disabling of Partition Merge feature on the account
  final bool? enablePartitionMerge;
  /// Flag to indicate enabling/disabling of PerRegionPerPartitionAutoscale feature on the account
  final bool? enablePerRegionPerPartitionAutoscale;
  /// Flag to indicate enabling/disabling of Priority Based Execution Preview feature on the account
  final bool? enablePriorityBasedExecution;
  /// An array that contains the regions ordered by their failover priorities.
  final List<FailoverPolicyResponse> failoverPolicies;
  /// The unique resource identifier of the ARM resource.
  final String id;
  /// Identity for the resource.
  final ManagedServiceIdentityResponse? identity;
  /// A unique identifier assigned to the database account
  final String instanceId;
  /// List of IpRules.
  final List<IpAddressOrRangeResponse>? ipRules;
  /// Flag to indicate whether to enable/disable Virtual Network ACL rules.
  final bool? isVirtualNetworkFilterEnabled;
  /// The URI of the key vault
  final String? keyVaultKeyUri;
  /// The version of the Customer Managed Key currently being used by the account
  final String keyVaultKeyUriVersion;
  /// The object that represents the metadata for the Account Keys of the Cosmos DB account.
  final DatabaseAccountKeysMetadataResponse keysMetadata;
  /// Indicates the type of database account. This can only be set at database account creation.
  final String? kind;
  /// The location of the resource group to which the resource belongs.
  final String? location;
  /// An array that contains all of the locations enabled for the Cosmos DB account.
  final List<LocationResponse> locations;
  /// Indicates the minimum allowed Tls version. The default value is Tls 1.2. Cassandra and Mongo APIs only work with Tls 1.2.
  final String? minimalTlsVersion;
  /// The name of the ARM resource.
  final String name;
  /// Indicates what services are allowed to bypass firewall checks.
  final String? networkAclBypass;
  /// An array that contains the Resource Ids for Network Acl Bypass for the Cosmos DB account.
  final List<String>? networkAclBypassResourceIds;
  /// List of Private Endpoint Connections configured for the Cosmos DB account.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The status of the Cosmos DB account at the time the operation was called. The status can be one of following. 'Creating' – the Cosmos DB account is being created. When an account is in Creating state, only properties that are specified as input for the Create Cosmos DB account operation are returned. 'Succeeded' – the Cosmos DB account is active for use. 'Updating' – the Cosmos DB account is being updated. 'Deleting' – the Cosmos DB account is being deleted. 'Failed' – the Cosmos DB account failed creation. 'DeletionFailed' – the Cosmos DB account deletion failed.
  final String provisioningState;
  /// Whether requests from Public Network are allowed
  final String? publicNetworkAccess;
  /// An array that contains of the read locations enabled for the Cosmos DB account.
  final List<LocationResponse> readLocations;
  /// Parameters to indicate the information about the restore.
  final RestoreParametersResponse? restoreParameters;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final Map<String, String>? tags;
  /// The type of Azure resource.
  final String type;
  /// List of Virtual Network ACL rules configured for the Cosmos DB account.
  final List<VirtualNetworkRuleResponse>? virtualNetworkRules;
  /// An array that contains the write location for the Cosmos DB account.
  final List<LocationResponse> writeLocations;

  /// Creates a new [GetDatabaseAccountResult].
  /// [analyticalStorageConfiguration] Analytical storage specific properties.
  /// [apiProperties] API specific properties.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backupPolicy] The object representing the policy for taking backups on an account.
  /// [capabilities] List of Cosmos DB capabilities for the account
  /// [capacity] The object that represents all properties related to capacity enforcement on an account.
  /// [connectorOffer] The cassandra connector offer type for the Cosmos DB database C* account.
  /// [consistencyPolicy] The consistency policy for the Cosmos DB database account.
  /// [cors] The CORS policy for the Cosmos DB database account.
  /// [createMode] Enum to indicate the mode of account creation.
  /// [customerManagedKeyStatus] Indicates the status of the Customer Managed Key feature on the account. In case there are errors, the property provides troubleshooting guidance.
  /// [databaseAccountOfferType] The offer type for the Cosmos DB database account. Default value: Standard.
  /// [defaultIdentity] The default identity for accessing key vault used in features like customer managed keys. The default identity needs to be explicitly set by the users. It can be "FirstPartyIdentity", "SystemAssignedIdentity" and more.
  /// [defaultPriorityLevel] Enum to indicate default Priority Level of request for Priority Based Execution.
  /// [disableKeyBasedMetadataWriteAccess] Disable write operations on metadata resources (databases, containers, throughput) via account keys
  /// [disableLocalAuth] Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  /// [documentEndpoint] The connection endpoint for the Cosmos DB database account.
  /// [enableAnalyticalStorage] Flag to indicate whether to enable storage analytics.
  /// [enableAutomaticFailover] Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage. Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account.
  /// [enableBurstCapacity] Flag to indicate enabling/disabling of Burst Capacity feature on the account
  /// [enableCassandraConnector] Enables the cassandra connector on the Cosmos DB C* account
  /// [enableFreeTier] Flag to indicate whether Free Tier is enabled.
  /// [enableMultipleWriteLocations] Enables the account to write in multiple locations
  /// [enablePartitionMerge] Flag to indicate enabling/disabling of Partition Merge feature on the account
  /// [enablePerRegionPerPartitionAutoscale] Flag to indicate enabling/disabling of PerRegionPerPartitionAutoscale feature on the account
  /// [enablePriorityBasedExecution] Flag to indicate enabling/disabling of Priority Based Execution Preview feature on the account
  /// [failoverPolicies] An array that contains the regions ordered by their failover priorities.
  /// [id] The unique resource identifier of the ARM resource.
  /// [identity] Identity for the resource.
  /// [instanceId] A unique identifier assigned to the database account
  /// [ipRules] List of IpRules.
  /// [isVirtualNetworkFilterEnabled] Flag to indicate whether to enable/disable Virtual Network ACL rules.
  /// [keyVaultKeyUri] The URI of the key vault
  /// [keyVaultKeyUriVersion] The version of the Customer Managed Key currently being used by the account
  /// [keysMetadata] The object that represents the metadata for the Account Keys of the Cosmos DB account.
  /// [kind] Indicates the type of database account. This can only be set at database account creation.
  /// [location] The location of the resource group to which the resource belongs.
  /// [locations] An array that contains all of the locations enabled for the Cosmos DB account.
  /// [minimalTlsVersion] Indicates the minimum allowed Tls version. The default value is Tls 1.2. Cassandra and Mongo APIs only work with Tls 1.2.
  /// [name] The name of the ARM resource.
  /// [networkAclBypass] Indicates what services are allowed to bypass firewall checks.
  /// [networkAclBypassResourceIds] An array that contains the Resource Ids for Network Acl Bypass for the Cosmos DB account.
  /// [privateEndpointConnections] List of Private Endpoint Connections configured for the Cosmos DB account.
  /// [provisioningState] The status of the Cosmos DB account at the time the operation was called. The status can be one of following. 'Creating' – the Cosmos DB account is being created. When an account is in Creating state, only properties that are specified as input for the Create Cosmos DB account operation are returned. 'Succeeded' – the Cosmos DB account is active for use. 'Updating' – the Cosmos DB account is being updated. 'Deleting' – the Cosmos DB account is being deleted. 'Failed' – the Cosmos DB account failed creation. 'DeletionFailed' – the Cosmos DB account deletion failed.
  /// [publicNetworkAccess] Whether requests from Public Network are allowed
  /// [readLocations] An array that contains of the read locations enabled for the Cosmos DB account.
  /// [restoreParameters] Parameters to indicate the information about the restore.
  /// [systemData] The system meta data relating to this resource.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [type] The type of Azure resource.
  /// [virtualNetworkRules] List of Virtual Network ACL rules configured for the Cosmos DB account.
  /// [writeLocations] An array that contains the write location for the Cosmos DB account.
  GetDatabaseAccountResult({
    this.analyticalStorageConfiguration,
    this.apiProperties,
    required this.azureApiVersion,
    this.backupPolicy,
    this.capabilities,
    this.capacity,
    this.connectorOffer,
    this.consistencyPolicy,
    this.cors,
    this.createMode,
    this.customerManagedKeyStatus,
    required this.databaseAccountOfferType,
    this.defaultIdentity,
    this.defaultPriorityLevel,
    this.disableKeyBasedMetadataWriteAccess,
    this.disableLocalAuth,
    required this.documentEndpoint,
    this.enableAnalyticalStorage,
    this.enableAutomaticFailover,
    this.enableBurstCapacity,
    this.enableCassandraConnector,
    this.enableFreeTier,
    this.enableMultipleWriteLocations,
    this.enablePartitionMerge,
    this.enablePerRegionPerPartitionAutoscale,
    this.enablePriorityBasedExecution,
    required this.failoverPolicies,
    required this.id,
    this.identity,
    required this.instanceId,
    this.ipRules,
    this.isVirtualNetworkFilterEnabled,
    this.keyVaultKeyUri,
    required this.keyVaultKeyUriVersion,
    required this.keysMetadata,
    this.kind,
    this.location,
    required this.locations,
    this.minimalTlsVersion,
    required this.name,
    this.networkAclBypass,
    this.networkAclBypassResourceIds,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.readLocations,
    this.restoreParameters,
    required this.systemData,
    this.tags,
    required this.type,
    this.virtualNetworkRules,
    required this.writeLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticalStorageConfiguration': ?analyticalStorageConfiguration?.toMap(),
      'apiProperties': ?apiProperties?.toMap(),
      'azureApiVersion': azureApiVersion,
      'backupPolicy': ?backupPolicy?.toMap(),
      'capabilities': ?(() { final guardedValue = capabilities; if (guardedValue == null) return null; return pulumi.Input.encodeList<CapabilityResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'capacity': ?capacity?.toMap(),
      'connectorOffer': ?connectorOffer,
      'consistencyPolicy': ?consistencyPolicy?.toMap(),
      'cors': ?(() { final guardedValue = cors; if (guardedValue == null) return null; return pulumi.Input.encodeList<CorsPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createMode': ?createMode,
      'customerManagedKeyStatus': ?customerManagedKeyStatus,
      'databaseAccountOfferType': databaseAccountOfferType,
      'defaultIdentity': ?defaultIdentity,
      'defaultPriorityLevel': ?defaultPriorityLevel,
      'disableKeyBasedMetadataWriteAccess': ?disableKeyBasedMetadataWriteAccess,
      'disableLocalAuth': ?disableLocalAuth,
      'documentEndpoint': documentEndpoint,
      'enableAnalyticalStorage': ?enableAnalyticalStorage,
      'enableAutomaticFailover': ?enableAutomaticFailover,
      'enableBurstCapacity': ?enableBurstCapacity,
      'enableCassandraConnector': ?enableCassandraConnector,
      'enableFreeTier': ?enableFreeTier,
      'enableMultipleWriteLocations': ?enableMultipleWriteLocations,
      'enablePartitionMerge': ?enablePartitionMerge,
      'enablePerRegionPerPartitionAutoscale': ?enablePerRegionPerPartitionAutoscale,
      'enablePriorityBasedExecution': ?enablePriorityBasedExecution,
      'failoverPolicies': pulumi.Input.encodeList<FailoverPolicyResponse, Map<String, dynamic>>(failoverPolicies, (value) => value.toMap()),
      'id': id,
      'identity': ?identity?.toMap(),
      'instanceId': instanceId,
      'ipRules': ?(() { final guardedValue = ipRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<IpAddressOrRangeResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'isVirtualNetworkFilterEnabled': ?isVirtualNetworkFilterEnabled,
      'keyVaultKeyUri': ?keyVaultKeyUri,
      'keyVaultKeyUriVersion': keyVaultKeyUriVersion,
      'keysMetadata': keysMetadata.toMap(),
      'kind': ?kind,
      'location': ?location,
      'locations': pulumi.Input.encodeList<LocationResponse, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'minimalTlsVersion': ?minimalTlsVersion,
      'name': name,
      'networkAclBypass': ?networkAclBypass,
      'networkAclBypassResourceIds': ?networkAclBypassResourceIds,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'readLocations': pulumi.Input.encodeList<LocationResponse, Map<String, dynamic>>(readLocations, (value) => value.toMap()),
      'restoreParameters': ?restoreParameters?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'virtualNetworkRules': ?(() { final guardedValue = virtualNetworkRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<VirtualNetworkRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'writeLocations': pulumi.Input.encodeList<LocationResponse, Map<String, dynamic>>(writeLocations, (value) => value.toMap()),
    };
  }

  factory GetDatabaseAccountResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAccountResult(
      analyticalStorageConfiguration: (() { final guardedValue = map['analyticalStorageConfiguration']; if (guardedValue == null) return null; return AnalyticalStorageConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      apiProperties: (() { final guardedValue = map['apiProperties']; if (guardedValue == null) return null; return ApiPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      backupPolicy: (() { final guardedValue = map['backupPolicy']; if (guardedValue == null) return null; return ContinuousModeBackupPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CapabilityResponse>(guardedValue, (value) => CapabilityResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return CapacityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      connectorOffer: (() { final guardedValue = map['connectorOffer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consistencyPolicy: (() { final guardedValue = map['consistencyPolicy']; if (guardedValue == null) return null; return ConsistencyPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CorsPolicyResponse>(guardedValue, (value) => CorsPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerManagedKeyStatus: (() { final guardedValue = map['customerManagedKeyStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseAccountOfferType: map['databaseAccountOfferType'] as String,
      defaultIdentity: (() { final guardedValue = map['defaultIdentity']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultPriorityLevel: (() { final guardedValue = map['defaultPriorityLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableKeyBasedMetadataWriteAccess: (() { final guardedValue = map['disableKeyBasedMetadataWriteAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      documentEndpoint: map['documentEndpoint'] as String,
      enableAnalyticalStorage: (() { final guardedValue = map['enableAnalyticalStorage']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableAutomaticFailover: (() { final guardedValue = map['enableAutomaticFailover']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableBurstCapacity: (() { final guardedValue = map['enableBurstCapacity']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableCassandraConnector: (() { final guardedValue = map['enableCassandraConnector']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableFreeTier: (() { final guardedValue = map['enableFreeTier']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableMultipleWriteLocations: (() { final guardedValue = map['enableMultipleWriteLocations']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePartitionMerge: (() { final guardedValue = map['enablePartitionMerge']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePerRegionPerPartitionAutoscale: (() { final guardedValue = map['enablePerRegionPerPartitionAutoscale']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enablePriorityBasedExecution: (() { final guardedValue = map['enablePriorityBasedExecution']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      failoverPolicies: pulumi.Input.decodeList<FailoverPolicyResponse>(map['failoverPolicies']!, (value) => FailoverPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceId: map['instanceId'] as String,
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IpAddressOrRangeResponse>(guardedValue, (value) => IpAddressOrRangeResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      isVirtualNetworkFilterEnabled: (() { final guardedValue = map['isVirtualNetworkFilterEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keyVaultKeyUri: (() { final guardedValue = map['keyVaultKeyUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyVaultKeyUriVersion: map['keyVaultKeyUriVersion'] as String,
      keysMetadata: DatabaseAccountKeysMetadataResponse.fromMap((map['keysMetadata']! as Map).cast<String, dynamic>()),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      locations: pulumi.Input.decodeList<LocationResponse>(map['locations']!, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())),
      minimalTlsVersion: (() { final guardedValue = map['minimalTlsVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      networkAclBypass: (() { final guardedValue = map['networkAclBypass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkAclBypassResourceIds: (() { final guardedValue = map['networkAclBypassResourceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readLocations: pulumi.Input.decodeList<LocationResponse>(map['readLocations']!, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())),
      restoreParameters: (() { final guardedValue = map['restoreParameters']; if (guardedValue == null) return null; return RestoreParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkRuleResponse>(guardedValue, (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      writeLocations: pulumi.Input.decodeList<LocationResponse>(map['writeLocations']!, (value) => LocationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

