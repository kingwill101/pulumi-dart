// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_identity.dart';
import 'sku.dart';

/// {@template pulumi_sql_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_sql_database_args_doc}
class DatabaseArgs {
  /// Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled
  final pulumi.Input<int>? autoPauseDelay;
  /// Specifies the availability zone the database is pinned to.
  final pulumi.Input<String>? availabilityZone;
  /// Collation of the metadata catalog.
  final pulumi.Input<String>? catalogCollation;
  /// The collation of the database.
  final pulumi.Input<String>? collation;
  /// Specifies the mode of database creation.
  ///
  /// Default: regular database creation.
  ///
  /// Copy: creates a database as a copy of an existing database. sourceDatabaseId must be specified as the resource ID of the source database.
  ///
  /// Secondary: creates a database as a secondary replica of an existing database. sourceDatabaseId must be specified as the resource ID of the existing primary database.
  ///
  /// PointInTimeRestore: Creates a database by restoring a point in time backup of an existing database. sourceDatabaseId must be specified as the resource ID of the existing database, and restorePointInTime must be specified.
  ///
  /// Recovery: Creates a database by restoring a geo-replicated backup. sourceDatabaseId must be specified as the recoverable database resource ID to restore.
  ///
  /// Restore: Creates a database by restoring a backup of a deleted database. sourceDatabaseId must be specified. If sourceDatabaseId is the database's original resource ID, then sourceDatabaseDeletionDate must be specified. Otherwise sourceDatabaseId must be the restorable dropped database resource ID and sourceDatabaseDeletionDate is ignored. restorePointInTime may also be specified to restore from an earlier point in time.
  ///
  /// RestoreLongTermRetentionBackup: Creates a database by restoring from a long term retention vault. recoveryServicesRecoveryPointResourceId must be specified as the recovery point resource ID.
  ///
  /// Copy, Secondary, and RestoreLongTermRetentionBackup are not supported for DataWarehouse edition.
  final pulumi.Input<String>? createMode;
  /// The name of the database.
  final pulumi.Input<String>? databaseName;
  /// The resource identifier of the elastic pool containing this database.
  final pulumi.Input<String>? elasticPoolId;
  /// The azure key vault URI of the database if it's configured with per Database Customer Managed Keys.
  final pulumi.Input<String>? encryptionProtector;
  /// The flag to enable or disable auto rotation of database encryption protector AKV key.
  final pulumi.Input<bool>? encryptionProtectorAutoRotation;
  /// The Client id used for cross tenant per database CMK scenario
  final pulumi.Input<String>? federatedClientId;
  /// Specifies the behavior when monthly free limits are exhausted for the free database.
  ///
  /// AutoPause: The database will be auto paused upon exhaustion of free limits for remainder of the month.
  ///
  /// BillForUsage: The database will continue to be online upon exhaustion of free limits and any overage will be billed.
  final pulumi.Input<String>? freeLimitExhaustionBehavior;
  /// The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition database that are used to provide high availability. Not applicable to a Hyperscale database within an elastic pool.
  final pulumi.Input<int>? highAvailabilityReplicaCount;
  /// The Azure Active Directory identity of the database.
  final pulumi.Input<DatabaseIdentity>? identity;
  /// Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  final pulumi.Input<bool>? isLedgerOn;
  /// The resource ids of the user assigned identities to use
  final pulumi.Input<List<String>>? keys;
  /// The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.
  final pulumi.Input<String>? licenseType;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The resource identifier of the long term retention backup associated with create operation of this database.
  final pulumi.Input<String>? longTermRetentionBackupResourceId;
  /// Maintenance configuration id assigned to the database. This configuration defines the period when the maintenance updates will occur.
  final pulumi.Input<String>? maintenanceConfigurationId;
  /// Whether or not customer controlled manual cutover needs to be done during Update Database operation to Hyperscale tier.
  ///
  /// This property is only applicable when scaling database from Business Critical/General Purpose/Premium/Standard tier to Hyperscale tier.
  ///
  /// When manualCutover is specified, the scaling operation will wait for user input to trigger cutover to Hyperscale database.
  ///
  /// To trigger cutover, please provide 'performCutover' parameter when the Scaling operation is in Waiting state.
  final pulumi.Input<bool>? manualCutover;
  /// The max size of the database expressed in bytes.
  final pulumi.Input<double>? maxSizeBytes;
  /// Minimal capacity that database will always have allocated, if not paused
  final pulumi.Input<double>? minCapacity;
  /// To trigger customer controlled manual cutover during the wait state while Scaling operation is in progress.
  ///
  /// This property parameter is only applicable for scaling operations that are initiated along with 'manualCutover' parameter.
  ///
  /// This property is only applicable when scaling database from Business Critical/General Purpose/Premium/Standard tier to Hyperscale tier is already in progress.
  ///
  /// When performCutover is specified, the scaling operation will trigger cutover and perform role-change to Hyperscale database.
  final pulumi.Input<bool>? performCutover;
  /// Type of enclave requested on the database i.e. Default or VBS enclaves.
  final pulumi.Input<String>? preferredEnclaveType;
  /// The state of read-only routing. If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica in the same region. Not applicable to a Hyperscale database within an elastic pool.
  final pulumi.Input<String>? readScale;
  /// The resource identifier of the recoverable database associated with create operation of this database.
  final pulumi.Input<String>? recoverableDatabaseId;
  /// The resource identifier of the recovery point associated with create operation of this database.
  final pulumi.Input<String>? recoveryServicesRecoveryPointId;
  /// The storage account type to be used to store backups for this database.
  final pulumi.Input<String>? requestedBackupStorageRedundancy;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The resource identifier of the restorable dropped database associated with create operation of this database.
  final pulumi.Input<String>? restorableDroppedDatabaseId;
  /// Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  final pulumi.Input<String>? restorePointInTime;
  /// The name of the sample schema to apply when creating this database.
  final pulumi.Input<String>? sampleName;
  /// The secondary type of the database if it is a secondary.  Valid values are Geo, Named and Standby.
  final pulumi.Input<String>? secondaryType;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// The database SKU.
  ///
  /// The list of SKUs may vary by region and support offer. To determine the SKUs (including the SKU name, tier/edition, family, and capacity) that are available to your subscription in an Azure region, use the `Capabilities_ListByLocation` REST API or one of the following commands:
  ///
  /// ```azurecli
  /// az sql db list-editions -l <location> -o table
  /// ````
  ///
  /// ```powershell
  /// Get-AzSqlServerServiceObjective -Location <location>
  /// ````
  final pulumi.Input<Sku>? sku;
  /// Specifies the time that the database was deleted.
  final pulumi.Input<String>? sourceDatabaseDeletionDate;
  /// The resource identifier of the source database associated with create operation of this database.
  final pulumi.Input<String>? sourceDatabaseId;
  /// The resource identifier of the source associated with the create operation of this database.
  ///
  /// This property is only supported for DataWarehouse edition and allows to restore across subscriptions.
  ///
  /// When sourceResourceId is specified, sourceDatabaseId, recoverableDatabaseId, restorableDroppedDatabaseId and sourceDatabaseDeletionDate must not be specified and CreateMode must be PointInTimeRestore, Restore or Recover.
  ///
  /// When createMode is PointInTimeRestore, sourceResourceId must be the resource ID of the existing database or existing sql pool, and restorePointInTime must be specified.
  ///
  /// When createMode is Restore, sourceResourceId must be the resource ID of restorable dropped database or restorable dropped sql pool.
  ///
  /// When createMode is Recover, sourceResourceId must be the resource ID of recoverable database or recoverable sql pool.
  ///
  /// When source subscription belongs to a different tenant than target subscription, “x-ms-authorization-auxiliary” header must contain authentication token for the source tenant. For more details about “x-ms-authorization-auxiliary” header see https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/authenticate-multi-tenant
  final pulumi.Input<String>? sourceResourceId;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Whether or not the database uses free monthly limits. Allowed on one database in a subscription.
  final pulumi.Input<bool>? useFreeLimit;
  /// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [DatabaseArgs].
  /// [autoPauseDelay] Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled
  /// [availabilityZone] Specifies the availability zone the database is pinned to.
  /// [catalogCollation] Collation of the metadata catalog.
  /// [collation] The collation of the database.
  /// [createMode] Specifies the mode of database creation.
  /// [databaseName] The name of the database.
  /// [elasticPoolId] The resource identifier of the elastic pool containing this database.
  /// [encryptionProtector] The azure key vault URI of the database if it's configured with per Database Customer Managed Keys.
  /// [encryptionProtectorAutoRotation] The flag to enable or disable auto rotation of database encryption protector AKV key.
  /// [federatedClientId] The Client id used for cross tenant per database CMK scenario
  /// [freeLimitExhaustionBehavior] Specifies the behavior when monthly free limits are exhausted for the free database.
  /// [highAvailabilityReplicaCount] The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition database that are used to provide high availability. Not applicable to a Hyperscale database within an elastic pool.
  /// [identity] The Azure Active Directory identity of the database.
  /// [isLedgerOn] Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  /// [keys] The resource ids of the user assigned identities to use
  /// [licenseType] The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.
  /// [location] Resource location.
  /// [longTermRetentionBackupResourceId] The resource identifier of the long term retention backup associated with create operation of this database.
  /// [maintenanceConfigurationId] Maintenance configuration id assigned to the database. This configuration defines the period when the maintenance updates will occur.
  /// [manualCutover] Whether or not customer controlled manual cutover needs to be done during Update Database operation to Hyperscale tier.
  /// [maxSizeBytes] The max size of the database expressed in bytes.
  /// [minCapacity] Minimal capacity that database will always have allocated, if not paused
  /// [performCutover] To trigger customer controlled manual cutover during the wait state while Scaling operation is in progress.
  /// [preferredEnclaveType] Type of enclave requested on the database i.e. Default or VBS enclaves.
  /// [readScale] The state of read-only routing. If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica in the same region. Not applicable to a Hyperscale database within an elastic pool.
  /// [recoverableDatabaseId] The resource identifier of the recoverable database associated with create operation of this database.
  /// [recoveryServicesRecoveryPointId] The resource identifier of the recovery point associated with create operation of this database.
  /// [requestedBackupStorageRedundancy] The storage account type to be used to store backups for this database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [restorableDroppedDatabaseId] The resource identifier of the restorable dropped database associated with create operation of this database.
  /// [restorePointInTime] Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  /// [sampleName] The name of the sample schema to apply when creating this database.
  /// [secondaryType] The secondary type of the database if it is a secondary.  Valid values are Geo, Named and Standby.
  /// [serverName] The name of the server.
  /// [sku] The database SKU.
  /// [sourceDatabaseDeletionDate] Specifies the time that the database was deleted.
  /// [sourceDatabaseId] The resource identifier of the source database associated with create operation of this database.
  /// [sourceResourceId] The resource identifier of the source associated with the create operation of this database.
  /// [tags] Resource tags.
  /// [useFreeLimit] Whether or not the database uses free monthly limits. Allowed on one database in a subscription.
  /// [zoneRedundant] Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  DatabaseArgs({
    int? autoPauseDelay,
    String? availabilityZone,
    String? catalogCollation,
    String? collation,
    String? createMode,
    String? databaseName,
    String? elasticPoolId,
    String? encryptionProtector,
    bool? encryptionProtectorAutoRotation,
    String? federatedClientId,
    String? freeLimitExhaustionBehavior,
    int? highAvailabilityReplicaCount,
    DatabaseIdentity? identity,
    bool? isLedgerOn,
    List<String>? keys,
    String? licenseType,
    String? location,
    String? longTermRetentionBackupResourceId,
    String? maintenanceConfigurationId,
    bool? manualCutover,
    double? maxSizeBytes,
    double? minCapacity,
    bool? performCutover,
    String? preferredEnclaveType,
    String? readScale,
    String? recoverableDatabaseId,
    String? recoveryServicesRecoveryPointId,
    String? requestedBackupStorageRedundancy,
    required String resourceGroupName,
    String? restorableDroppedDatabaseId,
    String? restorePointInTime,
    String? sampleName,
    String? secondaryType,
    required String serverName,
    Sku? sku,
    String? sourceDatabaseDeletionDate,
    String? sourceDatabaseId,
    String? sourceResourceId,
    Map<String, String>? tags,
    bool? useFreeLimit,
    bool? zoneRedundant,
  }) :
      autoPauseDelay = pulumi.Input.asOptionalInput<int>(autoPauseDelay),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      catalogCollation = pulumi.Input.asOptionalInput<String>(catalogCollation),
      collation = pulumi.Input.asOptionalInput<String>(collation),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      elasticPoolId = pulumi.Input.asOptionalInput<String>(elasticPoolId),
      encryptionProtector = pulumi.Input.asOptionalInput<String>(encryptionProtector),
      encryptionProtectorAutoRotation = pulumi.Input.asOptionalInput<bool>(encryptionProtectorAutoRotation),
      federatedClientId = pulumi.Input.asOptionalInput<String>(federatedClientId),
      freeLimitExhaustionBehavior = pulumi.Input.asOptionalInput<String>(freeLimitExhaustionBehavior),
      highAvailabilityReplicaCount = pulumi.Input.asOptionalInput<int>(highAvailabilityReplicaCount),
      identity = pulumi.Input.asOptionalInput<DatabaseIdentity>(identity),
      isLedgerOn = pulumi.Input.asOptionalInput<bool>(isLedgerOn),
      keys = pulumi.Input.asOptionalInput<List<String>>(keys),
      licenseType = pulumi.Input.asOptionalInput<String>(licenseType),
      location = pulumi.Input.asOptionalInput<String>(location),
      longTermRetentionBackupResourceId = pulumi.Input.asOptionalInput<String>(longTermRetentionBackupResourceId),
      maintenanceConfigurationId = pulumi.Input.asOptionalInput<String>(maintenanceConfigurationId),
      manualCutover = pulumi.Input.asOptionalInput<bool>(manualCutover),
      maxSizeBytes = pulumi.Input.asOptionalInput<double>(maxSizeBytes),
      minCapacity = pulumi.Input.asOptionalInput<double>(minCapacity),
      performCutover = pulumi.Input.asOptionalInput<bool>(performCutover),
      preferredEnclaveType = pulumi.Input.asOptionalInput<String>(preferredEnclaveType),
      readScale = pulumi.Input.asOptionalInput<String>(readScale),
      recoverableDatabaseId = pulumi.Input.asOptionalInput<String>(recoverableDatabaseId),
      recoveryServicesRecoveryPointId = pulumi.Input.asOptionalInput<String>(recoveryServicesRecoveryPointId),
      requestedBackupStorageRedundancy = pulumi.Input.asOptionalInput<String>(requestedBackupStorageRedundancy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restorableDroppedDatabaseId = pulumi.Input.asOptionalInput<String>(restorableDroppedDatabaseId),
      restorePointInTime = pulumi.Input.asOptionalInput<String>(restorePointInTime),
      sampleName = pulumi.Input.asOptionalInput<String>(sampleName),
      secondaryType = pulumi.Input.asOptionalInput<String>(secondaryType),
      serverName = pulumi.Input.asInput<String>(serverName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      sourceDatabaseDeletionDate = pulumi.Input.asOptionalInput<String>(sourceDatabaseDeletionDate),
      sourceDatabaseId = pulumi.Input.asOptionalInput<String>(sourceDatabaseId),
      sourceResourceId = pulumi.Input.asOptionalInput<String>(sourceResourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      useFreeLimit = pulumi.Input.asOptionalInput<bool>(useFreeLimit),
      zoneRedundant = pulumi.Input.asOptionalInput<bool>(zoneRedundant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPauseDelay': ?autoPauseDelay,
      'availabilityZone': ?availabilityZone,
      'catalogCollation': ?catalogCollation,
      'collation': ?collation,
      'createMode': ?createMode,
      'databaseName': ?databaseName,
      'elasticPoolId': ?elasticPoolId,
      'encryptionProtector': ?encryptionProtector,
      'encryptionProtectorAutoRotation': ?encryptionProtectorAutoRotation,
      'federatedClientId': ?federatedClientId,
      'freeLimitExhaustionBehavior': ?freeLimitExhaustionBehavior,
      'highAvailabilityReplicaCount': ?highAvailabilityReplicaCount,
      'identity': ?pulumi.Input.mapOptionalInputValue<DatabaseIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'isLedgerOn': ?isLedgerOn,
      'keys': ?keys,
      'licenseType': ?licenseType,
      'location': ?location,
      'longTermRetentionBackupResourceId': ?longTermRetentionBackupResourceId,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'manualCutover': ?manualCutover,
      'maxSizeBytes': ?maxSizeBytes,
      'minCapacity': ?minCapacity,
      'performCutover': ?performCutover,
      'preferredEnclaveType': ?preferredEnclaveType,
      'readScale': ?readScale,
      'recoverableDatabaseId': ?recoverableDatabaseId,
      'recoveryServicesRecoveryPointId': ?recoveryServicesRecoveryPointId,
      'requestedBackupStorageRedundancy': ?requestedBackupStorageRedundancy,
      'resourceGroupName': resourceGroupName,
      'restorableDroppedDatabaseId': ?restorableDroppedDatabaseId,
      'restorePointInTime': ?restorePointInTime,
      'sampleName': ?sampleName,
      'secondaryType': ?secondaryType,
      'serverName': serverName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'sourceDatabaseDeletionDate': ?sourceDatabaseDeletionDate,
      'sourceDatabaseId': ?sourceDatabaseId,
      'sourceResourceId': ?sourceResourceId,
      'tags': ?tags,
      'useFreeLimit': ?useFreeLimit,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      autoPauseDelay: map['autoPauseDelay'] == null ? null : map['autoPauseDelay'] as int,
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      catalogCollation: map['catalogCollation'] == null ? null : map['catalogCollation'] as String,
      collation: map['collation'] == null ? null : map['collation'] as String,
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      elasticPoolId: map['elasticPoolId'] == null ? null : map['elasticPoolId'] as String,
      encryptionProtector: map['encryptionProtector'] == null ? null : map['encryptionProtector'] as String,
      encryptionProtectorAutoRotation: map['encryptionProtectorAutoRotation'] == null ? null : map['encryptionProtectorAutoRotation'] as bool,
      federatedClientId: map['federatedClientId'] == null ? null : map['federatedClientId'] as String,
      freeLimitExhaustionBehavior: map['freeLimitExhaustionBehavior'] == null ? null : map['freeLimitExhaustionBehavior'] as String,
      highAvailabilityReplicaCount: map['highAvailabilityReplicaCount'] == null ? null : map['highAvailabilityReplicaCount'] as int,
      identity: map['identity'] == null ? null : DatabaseIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      isLedgerOn: map['isLedgerOn'] == null ? null : map['isLedgerOn'] as bool,
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
      licenseType: map['licenseType'] == null ? null : map['licenseType'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      longTermRetentionBackupResourceId: map['longTermRetentionBackupResourceId'] == null ? null : map['longTermRetentionBackupResourceId'] as String,
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : map['maintenanceConfigurationId'] as String,
      manualCutover: map['manualCutover'] == null ? null : map['manualCutover'] as bool,
      maxSizeBytes: map['maxSizeBytes'] == null ? null : map['maxSizeBytes'] as double,
      minCapacity: map['minCapacity'] == null ? null : map['minCapacity'] as double,
      performCutover: map['performCutover'] == null ? null : map['performCutover'] as bool,
      preferredEnclaveType: map['preferredEnclaveType'] == null ? null : map['preferredEnclaveType'] as String,
      readScale: map['readScale'] == null ? null : map['readScale'] as String,
      recoverableDatabaseId: map['recoverableDatabaseId'] == null ? null : map['recoverableDatabaseId'] as String,
      recoveryServicesRecoveryPointId: map['recoveryServicesRecoveryPointId'] == null ? null : map['recoveryServicesRecoveryPointId'] as String,
      requestedBackupStorageRedundancy: map['requestedBackupStorageRedundancy'] == null ? null : map['requestedBackupStorageRedundancy'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      restorableDroppedDatabaseId: map['restorableDroppedDatabaseId'] == null ? null : map['restorableDroppedDatabaseId'] as String,
      restorePointInTime: map['restorePointInTime'] == null ? null : map['restorePointInTime'] as String,
      sampleName: map['sampleName'] == null ? null : map['sampleName'] as String,
      secondaryType: map['secondaryType'] == null ? null : map['secondaryType'] as String,
      serverName: map['serverName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      sourceDatabaseDeletionDate: map['sourceDatabaseDeletionDate'] == null ? null : map['sourceDatabaseDeletionDate'] as String,
      sourceDatabaseId: map['sourceDatabaseId'] == null ? null : map['sourceDatabaseId'] as String,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      useFreeLimit: map['useFreeLimit'] == null ? null : map['useFreeLimit'] as bool,
      zoneRedundant: map['zoneRedundant'] == null ? null : map['zoneRedundant'] as bool,
    );
  }
}

