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
    String? accountName,
    AnalyticalStorageConfiguration? analyticalStorageConfiguration,
    ApiProperties? apiProperties,
    ContinuousModeBackupPolicy? backupPolicy,
    List<Capability>? capabilities,
    Capacity? capacity,
    String? connectorOffer,
    ConsistencyPolicy? consistencyPolicy,
    List<CorsPolicy>? cors,
    String? createMode,
    String? customerManagedKeyStatus,
    required DatabaseAccountOfferType databaseAccountOfferType,
    String? defaultIdentity,
    String? defaultPriorityLevel,
    bool? disableKeyBasedMetadataWriteAccess,
    bool? disableLocalAuth,
    bool? enableAnalyticalStorage,
    bool? enableAutomaticFailover,
    bool? enableBurstCapacity,
    bool? enableCassandraConnector,
    bool? enableFreeTier,
    bool? enableMultipleWriteLocations,
    bool? enablePartitionMerge,
    bool? enablePerRegionPerPartitionAutoscale,
    bool? enablePriorityBasedExecution,
    ManagedServiceIdentity? identity,
    List<IpAddressOrRange>? ipRules,
    bool? isVirtualNetworkFilterEnabled,
    String? keyVaultKeyUri,
    String? kind,
    String? location,
    required List<Location> locations,
    String? minimalTlsVersion,
    NetworkAclBypass? networkAclBypass,
    List<String>? networkAclBypassResourceIds,
    String? publicNetworkAccess,
    required String resourceGroupName,
    RestoreParameters? restoreParameters,
    Map<String, String>? tags,
    List<VirtualNetworkRule>? virtualNetworkRules,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      analyticalStorageConfiguration = pulumi.Input.asOptionalInput<AnalyticalStorageConfiguration>(analyticalStorageConfiguration),
      apiProperties = pulumi.Input.asOptionalInput<ApiProperties>(apiProperties),
      backupPolicy = pulumi.Input.asOptionalInput<ContinuousModeBackupPolicy>(backupPolicy),
      capabilities = pulumi.Input.asOptionalInput<List<Capability>>(capabilities),
      capacity = pulumi.Input.asOptionalInput<Capacity>(capacity),
      connectorOffer = pulumi.Input.asOptionalInput<String>(connectorOffer),
      consistencyPolicy = pulumi.Input.asOptionalInput<ConsistencyPolicy>(consistencyPolicy),
      cors = pulumi.Input.asOptionalInput<List<CorsPolicy>>(cors),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      customerManagedKeyStatus = pulumi.Input.asOptionalInput<String>(customerManagedKeyStatus),
      databaseAccountOfferType = pulumi.Input.asInput<DatabaseAccountOfferType>(databaseAccountOfferType),
      defaultIdentity = pulumi.Input.asOptionalInput<String>(defaultIdentity),
      defaultPriorityLevel = pulumi.Input.asOptionalInput<String>(defaultPriorityLevel),
      disableKeyBasedMetadataWriteAccess = pulumi.Input.asOptionalInput<bool>(disableKeyBasedMetadataWriteAccess),
      disableLocalAuth = pulumi.Input.asOptionalInput<bool>(disableLocalAuth),
      enableAnalyticalStorage = pulumi.Input.asOptionalInput<bool>(enableAnalyticalStorage),
      enableAutomaticFailover = pulumi.Input.asOptionalInput<bool>(enableAutomaticFailover),
      enableBurstCapacity = pulumi.Input.asOptionalInput<bool>(enableBurstCapacity),
      enableCassandraConnector = pulumi.Input.asOptionalInput<bool>(enableCassandraConnector),
      enableFreeTier = pulumi.Input.asOptionalInput<bool>(enableFreeTier),
      enableMultipleWriteLocations = pulumi.Input.asOptionalInput<bool>(enableMultipleWriteLocations),
      enablePartitionMerge = pulumi.Input.asOptionalInput<bool>(enablePartitionMerge),
      enablePerRegionPerPartitionAutoscale = pulumi.Input.asOptionalInput<bool>(enablePerRegionPerPartitionAutoscale),
      enablePriorityBasedExecution = pulumi.Input.asOptionalInput<bool>(enablePriorityBasedExecution),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      ipRules = pulumi.Input.asOptionalInput<List<IpAddressOrRange>>(ipRules),
      isVirtualNetworkFilterEnabled = pulumi.Input.asOptionalInput<bool>(isVirtualNetworkFilterEnabled),
      keyVaultKeyUri = pulumi.Input.asOptionalInput<String>(keyVaultKeyUri),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      locations = pulumi.Input.asInput<List<Location>>(locations),
      minimalTlsVersion = pulumi.Input.asOptionalInput<String>(minimalTlsVersion),
      networkAclBypass = pulumi.Input.asOptionalInput<NetworkAclBypass>(networkAclBypass),
      networkAclBypassResourceIds = pulumi.Input.asOptionalInput<List<String>>(networkAclBypassResourceIds),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restoreParameters = pulumi.Input.asOptionalInput<RestoreParameters>(restoreParameters),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualNetworkRules = pulumi.Input.asOptionalInput<List<VirtualNetworkRule>>(virtualNetworkRules);

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
      'databaseAccountOfferType': pulumi.Input.mapInputValue<DatabaseAccountOfferType, String>(databaseAccountOfferType, (value) => value.value),
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
      'networkAclBypass': ?pulumi.Input.mapOptionalInputValue<NetworkAclBypass, String>(networkAclBypass, (value) => value.value),
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
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      analyticalStorageConfiguration: map['analyticalStorageConfiguration'] == null ? null : AnalyticalStorageConfiguration.fromMap((map['analyticalStorageConfiguration'] as Map).cast<String, dynamic>()),
      apiProperties: map['apiProperties'] == null ? null : ApiProperties.fromMap((map['apiProperties'] as Map).cast<String, dynamic>()),
      backupPolicy: map['backupPolicy'] == null ? null : ContinuousModeBackupPolicy.fromMap((map['backupPolicy'] as Map).cast<String, dynamic>()),
      capabilities: map['capabilities'] == null ? null : pulumi.Input.decodeList<Capability>(map['capabilities'], (value) => Capability.fromMap((value as Map).cast<String, dynamic>())),
      capacity: map['capacity'] == null ? null : Capacity.fromMap((map['capacity'] as Map).cast<String, dynamic>()),
      connectorOffer: map['connectorOffer'] == null ? null : map['connectorOffer'] as String,
      consistencyPolicy: map['consistencyPolicy'] == null ? null : ConsistencyPolicy.fromMap((map['consistencyPolicy'] as Map).cast<String, dynamic>()),
      cors: map['cors'] == null ? null : pulumi.Input.decodeList<CorsPolicy>(map['cors'], (value) => CorsPolicy.fromMap((value as Map).cast<String, dynamic>())),
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      customerManagedKeyStatus: map['customerManagedKeyStatus'] == null ? null : map['customerManagedKeyStatus'] as String,
      databaseAccountOfferType: DatabaseAccountOfferType.fromValue(map['databaseAccountOfferType'] as String),
      defaultIdentity: map['defaultIdentity'] == null ? null : map['defaultIdentity'] as String,
      defaultPriorityLevel: map['defaultPriorityLevel'] == null ? null : map['defaultPriorityLevel'] as String,
      disableKeyBasedMetadataWriteAccess: map['disableKeyBasedMetadataWriteAccess'] == null ? null : map['disableKeyBasedMetadataWriteAccess'] as bool,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      enableAnalyticalStorage: map['enableAnalyticalStorage'] == null ? null : map['enableAnalyticalStorage'] as bool,
      enableAutomaticFailover: map['enableAutomaticFailover'] == null ? null : map['enableAutomaticFailover'] as bool,
      enableBurstCapacity: map['enableBurstCapacity'] == null ? null : map['enableBurstCapacity'] as bool,
      enableCassandraConnector: map['enableCassandraConnector'] == null ? null : map['enableCassandraConnector'] as bool,
      enableFreeTier: map['enableFreeTier'] == null ? null : map['enableFreeTier'] as bool,
      enableMultipleWriteLocations: map['enableMultipleWriteLocations'] == null ? null : map['enableMultipleWriteLocations'] as bool,
      enablePartitionMerge: map['enablePartitionMerge'] == null ? null : map['enablePartitionMerge'] as bool,
      enablePerRegionPerPartitionAutoscale: map['enablePerRegionPerPartitionAutoscale'] == null ? null : map['enablePerRegionPerPartitionAutoscale'] as bool,
      enablePriorityBasedExecution: map['enablePriorityBasedExecution'] == null ? null : map['enablePriorityBasedExecution'] as bool,
      identity: map['identity'] == null ? null : ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      ipRules: map['ipRules'] == null ? null : pulumi.Input.decodeList<IpAddressOrRange>(map['ipRules'], (value) => IpAddressOrRange.fromMap((value as Map).cast<String, dynamic>())),
      isVirtualNetworkFilterEnabled: map['isVirtualNetworkFilterEnabled'] == null ? null : map['isVirtualNetworkFilterEnabled'] as bool,
      keyVaultKeyUri: map['keyVaultKeyUri'] == null ? null : map['keyVaultKeyUri'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      locations: pulumi.Input.decodeList<Location>(map['locations'], (value) => Location.fromMap((value as Map).cast<String, dynamic>())),
      minimalTlsVersion: map['minimalTlsVersion'] == null ? null : map['minimalTlsVersion'] as String,
      networkAclBypass: map['networkAclBypass'] == null ? null : NetworkAclBypass.fromValue(map['networkAclBypass'] as String),
      networkAclBypassResourceIds: map['networkAclBypassResourceIds'] == null ? null : (map['networkAclBypassResourceIds'] as List).cast<String>(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      restoreParameters: map['restoreParameters'] == null ? null : RestoreParameters.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualNetworkRules: map['virtualNetworkRules'] == null ? null : pulumi.Input.decodeList<VirtualNetworkRule>(map['virtualNetworkRules'], (value) => VirtualNetworkRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

