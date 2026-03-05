// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytical_storage_configuration.dart';
import 'api_properties.dart';
import 'capability.dart';
import 'capacity.dart';
import 'consistency_policy.dart';
import 'continuous_mode_backup_policy.dart';
import 'cors_policy.dart';
import 'database_account_offer_type.dart';
import 'ip_address_or_range.dart';
import 'location.dart';
import 'managed_service_identity.dart';
import 'network_acl_bypass.dart';
import 'restore_parameters.dart';
import 'virtual_network_rule.dart';

/// {@template pulumi_cosmosdb_database_account_args_doc}
/// The set of arguments for DatabaseAccount.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_database_account_args_doc}
class DatabaseAccountArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String>? accountName;
  /// Analytical storage specific properties.
  final pulumi.Input<AnalyticalStorageConfiguration>? analyticalStorageConfiguration;
  /// API specific properties. Currently, supported only for MongoDB API.
  final pulumi.Input<ApiProperties>? apiProperties;
  /// The object representing the policy for taking backups on an account.
  final pulumi.Input<ContinuousModeBackupPolicy>? backupPolicy;
  /// List of Cosmos DB capabilities for the account
  final pulumi.Input<List<Capability>>? capabilities;
  /// The object that represents all properties related to capacity enforcement on an account.
  final pulumi.Input<Capacity>? capacity;
  /// The cassandra connector offer type for the Cosmos DB database C* account.
  final pulumi.Input<String>? connectorOffer;
  /// The consistency policy for the Cosmos DB account.
  final pulumi.Input<ConsistencyPolicy>? consistencyPolicy;
  /// The CORS policy for the Cosmos DB database account.
  final pulumi.Input<List<CorsPolicy>>? cors;
  /// Enum to indicate the mode of account creation.
  final pulumi.Input<String>? createMode;
  /// Indicates the status of the Customer Managed Key feature on the account. In case there are errors, the property provides troubleshooting guidance.
  final pulumi.Input<String>? customerManagedKeyStatus;
  /// The offer type for the database
  final pulumi.Input<DatabaseAccountOfferType> databaseAccountOfferType;
  /// The default identity for accessing key vault used in features like customer managed keys. The default identity needs to be explicitly set by the users. It can be "FirstPartyIdentity", "SystemAssignedIdentity" and more.
  final pulumi.Input<String>? defaultIdentity;
  /// Enum to indicate default Priority Level of request for Priority Based Execution.
  final pulumi.Input<String>? defaultPriorityLevel;
  /// Disable write operations on metadata resources (databases, containers, throughput) via account keys
  final pulumi.Input<bool>? disableKeyBasedMetadataWriteAccess;
  /// Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Flag to indicate whether to enable storage analytics.
  final pulumi.Input<bool>? enableAnalyticalStorage;
  /// Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage. Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account.
  final pulumi.Input<bool>? enableAutomaticFailover;
  /// Flag to indicate enabling/disabling of Burst Capacity feature on the account
  final pulumi.Input<bool>? enableBurstCapacity;
  /// Enables the cassandra connector on the Cosmos DB C* account
  final pulumi.Input<bool>? enableCassandraConnector;
  /// Flag to indicate whether Free Tier is enabled.
  final pulumi.Input<bool>? enableFreeTier;
  /// Enables the account to write in multiple locations
  final pulumi.Input<bool>? enableMultipleWriteLocations;
  /// Flag to indicate enabling/disabling of Partition Merge feature on the account
  final pulumi.Input<bool>? enablePartitionMerge;
  /// Flag to indicate enabling/disabling of PerRegionPerPartitionAutoscale feature on the account
  final pulumi.Input<bool>? enablePerRegionPerPartitionAutoscale;
  /// Flag to indicate enabling/disabling of Priority Based Execution Preview feature on the account
  final pulumi.Input<bool>? enablePriorityBasedExecution;
  /// Identity for the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// List of IpRules.
  final pulumi.Input<List<IpAddressOrRange>>? ipRules;
  /// Flag to indicate whether to enable/disable Virtual Network ACL rules.
  final pulumi.Input<bool>? isVirtualNetworkFilterEnabled;
  /// The URI of the key vault
  final pulumi.Input<String>? keyVaultKeyUri;
  /// Indicates the type of database account. This can only be set at database account creation.
  final pulumi.Input<String>? kind;
  /// The location of the resource group to which the resource belongs.
  final pulumi.Input<String>? location;
  /// An array that contains the georeplication locations enabled for the Cosmos DB account.
  final pulumi.Input<List<Location>> locations;
  /// Indicates the minimum allowed Tls version. The default value is Tls 1.2. Cassandra and Mongo APIs only work with Tls 1.2.
  final pulumi.Input<String>? minimalTlsVersion;
  /// Indicates what services are allowed to bypass firewall checks.
  final pulumi.Input<NetworkAclBypass>? networkAclBypass;
  /// An array that contains the Resource Ids for Network Acl Bypass for the Cosmos DB account.
  final pulumi.Input<List<String>>? networkAclBypassResourceIds;
  /// Whether requests from Public Network are allowed
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameters to indicate the information about the restore.
  final pulumi.Input<RestoreParameters>? restoreParameters;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  final pulumi.Input<Map<String, String>>? tags;
  /// List of Virtual Network ACL rules configured for the Cosmos DB account.
  final pulumi.Input<List<VirtualNetworkRule>>? virtualNetworkRules;

  /// Creates a new [DatabaseAccountArgs].
  /// [accountName] Cosmos DB database account name.
  /// [analyticalStorageConfiguration] Analytical storage specific properties.
  /// [apiProperties] API specific properties. Currently, supported only for MongoDB API.
  /// [backupPolicy] The object representing the policy for taking backups on an account.
  /// [capabilities] List of Cosmos DB capabilities for the account
  /// [capacity] The object that represents all properties related to capacity enforcement on an account.
  /// [connectorOffer] The cassandra connector offer type for the Cosmos DB database C* account.
  /// [consistencyPolicy] The consistency policy for the Cosmos DB account.
  /// [cors] The CORS policy for the Cosmos DB database account.
  /// [createMode] Enum to indicate the mode of account creation.
  /// [customerManagedKeyStatus] Indicates the status of the Customer Managed Key feature on the account. In case there are errors, the property provides troubleshooting guidance.
  /// [databaseAccountOfferType] The offer type for the database
  /// [defaultIdentity] The default identity for accessing key vault used in features like customer managed keys. The default identity needs to be explicitly set by the users. It can be "FirstPartyIdentity", "SystemAssignedIdentity" and more.
  /// [defaultPriorityLevel] Enum to indicate default Priority Level of request for Priority Based Execution.
  /// [disableKeyBasedMetadataWriteAccess] Disable write operations on metadata resources (databases, containers, throughput) via account keys
  /// [disableLocalAuth] Opt-out of local authentication and ensure only MSI and AAD can be used exclusively for authentication.
  /// [enableAnalyticalStorage] Flag to indicate whether to enable storage analytics.
  /// [enableAutomaticFailover] Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage. Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account.
  /// [enableBurstCapacity] Flag to indicate enabling/disabling of Burst Capacity feature on the account
  /// [enableCassandraConnector] Enables the cassandra connector on the Cosmos DB C* account
  /// [enableFreeTier] Flag to indicate whether Free Tier is enabled.
  /// [enableMultipleWriteLocations] Enables the account to write in multiple locations
  /// [enablePartitionMerge] Flag to indicate enabling/disabling of Partition Merge feature on the account
  /// [enablePerRegionPerPartitionAutoscale] Flag to indicate enabling/disabling of PerRegionPerPartitionAutoscale feature on the account
  /// [enablePriorityBasedExecution] Flag to indicate enabling/disabling of Priority Based Execution Preview feature on the account
  /// [identity] Identity for the resource.
  /// [ipRules] List of IpRules.
  /// [isVirtualNetworkFilterEnabled] Flag to indicate whether to enable/disable Virtual Network ACL rules.
  /// [keyVaultKeyUri] The URI of the key vault
  /// [kind] Indicates the type of database account. This can only be set at database account creation.
  /// [location] The location of the resource group to which the resource belongs.
  /// [locations] An array that contains the georeplication locations enabled for the Cosmos DB account.
  /// [minimalTlsVersion] Indicates the minimum allowed Tls version. The default value is Tls 1.2. Cassandra and Mongo APIs only work with Tls 1.2.
  /// [networkAclBypass] Indicates what services are allowed to bypass firewall checks.
  /// [networkAclBypassResourceIds] An array that contains the Resource Ids for Network Acl Bypass for the Cosmos DB account.
  /// [publicNetworkAccess] Whether requests from Public Network are allowed
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restoreParameters] Parameters to indicate the information about the restore.
  /// [tags] Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  /// [virtualNetworkRules] List of Virtual Network ACL rules configured for the Cosmos DB account.
  DatabaseAccountArgs({
    this.accountName,
    this.analyticalStorageConfiguration,
    this.apiProperties,
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
    this.enableAnalyticalStorage,
    this.enableAutomaticFailover,
    this.enableBurstCapacity,
    this.enableCassandraConnector,
    this.enableFreeTier,
    this.enableMultipleWriteLocations,
    this.enablePartitionMerge,
    this.enablePerRegionPerPartitionAutoscale,
    this.enablePriorityBasedExecution,
    this.identity,
    this.ipRules,
    this.isVirtualNetworkFilterEnabled,
    this.keyVaultKeyUri,
    this.kind,
    this.location,
    required this.locations,
    this.minimalTlsVersion,
    this.networkAclBypass,
    this.networkAclBypassResourceIds,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.restoreParameters,
    this.tags,
    this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'analyticalStorageConfiguration': ?pulumi.Input.mapOptionalInputValue<AnalyticalStorageConfiguration, Map<String, dynamic>>(analyticalStorageConfiguration, (value) => value.toMap()),
      'apiProperties': ?pulumi.Input.mapOptionalInputValue<ApiProperties, Map<String, dynamic>>(apiProperties, (value) => value.toMap()),
      'backupPolicy': ?pulumi.Input.mapOptionalInputValue<ContinuousModeBackupPolicy, Map<String, dynamic>>(backupPolicy, (value) => value.toMap()),
      'capabilities': ?pulumi.Input.mapOptionalInputValue<List<Capability>, List<Map<String, dynamic>>>(capabilities, (value) => pulumi.Input.encodeList<Capability, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacity': ?pulumi.Input.mapOptionalInputValue<Capacity, Map<String, dynamic>>(capacity, (value) => value.toMap()),
      'connectorOffer': ?connectorOffer,
      'consistencyPolicy': ?pulumi.Input.mapOptionalInputValue<ConsistencyPolicy, Map<String, dynamic>>(consistencyPolicy, (value) => value.toMap()),
      'cors': ?pulumi.Input.mapOptionalInputValue<List<CorsPolicy>, List<Map<String, dynamic>>>(cors, (value) => pulumi.Input.encodeList<CorsPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createMode': ?createMode,
      'customerManagedKeyStatus': ?customerManagedKeyStatus,
      'databaseAccountOfferType': pulumi.Input.mapInputValue<DatabaseAccountOfferType, String>(databaseAccountOfferType, (value) => value.wireValue),
      'defaultIdentity': ?defaultIdentity,
      'defaultPriorityLevel': ?defaultPriorityLevel,
      'disableKeyBasedMetadataWriteAccess': ?disableKeyBasedMetadataWriteAccess,
      'disableLocalAuth': ?disableLocalAuth,
      'enableAnalyticalStorage': ?enableAnalyticalStorage,
      'enableAutomaticFailover': ?enableAutomaticFailover,
      'enableBurstCapacity': ?enableBurstCapacity,
      'enableCassandraConnector': ?enableCassandraConnector,
      'enableFreeTier': ?enableFreeTier,
      'enableMultipleWriteLocations': ?enableMultipleWriteLocations,
      'enablePartitionMerge': ?enablePartitionMerge,
      'enablePerRegionPerPartitionAutoscale': ?enablePerRegionPerPartitionAutoscale,
      'enablePriorityBasedExecution': ?enablePriorityBasedExecution,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'ipRules': ?pulumi.Input.mapOptionalInputValue<List<IpAddressOrRange>, List<Map<String, dynamic>>>(ipRules, (value) => pulumi.Input.encodeList<IpAddressOrRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isVirtualNetworkFilterEnabled': ?isVirtualNetworkFilterEnabled,
      'keyVaultKeyUri': ?keyVaultKeyUri,
      'kind': ?kind,
      'location': ?location,
      'locations': pulumi.Input.mapInputValue<List<Location>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<Location, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minimalTlsVersion': ?minimalTlsVersion,
      'networkAclBypass': ?pulumi.Input.mapOptionalInputValue<NetworkAclBypass, String>(networkAclBypass, (value) => value.wireValue),
      'networkAclBypassResourceIds': ?networkAclBypassResourceIds,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<RestoreParameters, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'tags': ?tags,
      'virtualNetworkRules': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkRule>, List<Map<String, dynamic>>>(virtualNetworkRules, (value) => pulumi.Input.encodeList<VirtualNetworkRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatabaseAccountArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAccountArgs(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      analyticalStorageConfiguration: (() { final guardedValue = map['analyticalStorageConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyticalStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      apiProperties: (() { final guardedValue = map['apiProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backupPolicy: (() { final guardedValue = map['backupPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContinuousModeBackupPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Capability>(guardedValue, (value) => Capability.fromMap((value as Map).cast<String, dynamic>()))); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Capacity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectorOffer: (() { final guardedValue = map['connectorOffer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consistencyPolicy: (() { final guardedValue = map['consistencyPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConsistencyPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CorsPolicy>(guardedValue, (value) => CorsPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKeyStatus: (() { final guardedValue = map['customerManagedKeyStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseAccountOfferType: pulumi.Input.fromValue(DatabaseAccountOfferType.fromValue(map['databaseAccountOfferType']! as String)),
      defaultIdentity: (() { final guardedValue = map['defaultIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultPriorityLevel: (() { final guardedValue = map['defaultPriorityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableKeyBasedMetadataWriteAccess: (() { final guardedValue = map['disableKeyBasedMetadataWriteAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAnalyticalStorage: (() { final guardedValue = map['enableAnalyticalStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableAutomaticFailover: (() { final guardedValue = map['enableAutomaticFailover']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableBurstCapacity: (() { final guardedValue = map['enableBurstCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableCassandraConnector: (() { final guardedValue = map['enableCassandraConnector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableFreeTier: (() { final guardedValue = map['enableFreeTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableMultipleWriteLocations: (() { final guardedValue = map['enableMultipleWriteLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePartitionMerge: (() { final guardedValue = map['enablePartitionMerge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePerRegionPerPartitionAutoscale: (() { final guardedValue = map['enablePerRegionPerPartitionAutoscale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePriorityBasedExecution: (() { final guardedValue = map['enablePriorityBasedExecution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipRules: (() { final guardedValue = map['ipRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpAddressOrRange>(guardedValue, (value) => IpAddressOrRange.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isVirtualNetworkFilterEnabled: (() { final guardedValue = map['isVirtualNetworkFilterEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultKeyUri: (() { final guardedValue = map['keyVaultKeyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: pulumi.Input.fromValue(pulumi.Input.decodeList<Location>(map['locations']!, (value) => Location.fromMap((value as Map).cast<String, dynamic>()))),
      minimalTlsVersion: (() { final guardedValue = map['minimalTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAclBypass: (() { final guardedValue = map['networkAclBypass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkAclBypass.fromValue(guardedValue as String)); })(),
      networkAclBypassResourceIds: (() { final guardedValue = map['networkAclBypassResourceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restoreParameters: (() { final guardedValue = map['restoreParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetworkRules: (() { final guardedValue = map['virtualNetworkRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkRule>(guardedValue, (value) => VirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

