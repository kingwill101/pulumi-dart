// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_managed_database_args_doc}
/// The set of arguments for ManagedDatabase.
/// {@endtemplate}
/// {@macro pulumi_sql_managed_database_args_doc}
class ManagedDatabaseArgs {
  /// Whether to auto complete restore of this managed database.
  final pulumi.Input<bool>? autoCompleteRestore;
  /// Collation of the metadata catalog.
  final pulumi.Input<String>? catalogCollation;
  /// Collation of the managed database.
  final pulumi.Input<String>? collation;
  /// Managed database create mode. PointInTimeRestore: Create a database by restoring a point in time backup of an existing database. SourceDatabaseName, SourceManagedInstanceName and PointInTime must be specified. RestoreExternalBackup: Create a database by restoring from external backup files. Collation, StorageContainerUri and StorageContainerSasToken must be specified. Recovery: Creates a database by restoring a geo-replicated backup. RecoverableDatabaseId must be specified as the recoverable database resource ID to restore. RestoreLongTermRetentionBackup: Create a database by restoring from a long term retention backup (longTermRetentionBackupResourceId required).
  final pulumi.Input<String>? createMode;
  /// The restorable cross-subscription dropped database resource id to restore when creating this database.
  final pulumi.Input<String>? crossSubscriptionRestorableDroppedDatabaseId;
  /// The resource identifier of the cross-subscription source database associated with create operation of this database.
  final pulumi.Input<String>? crossSubscriptionSourceDatabaseId;
  /// Target managed instance id used in cross-subscription restore.
  final pulumi.Input<String>? crossSubscriptionTargetManagedInstanceId;
  /// The name of the database.
  final pulumi.Input<String>? databaseName;
  /// Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  final pulumi.Input<bool>? isLedgerOn;
  /// Last backup file name for restore of this managed database.
  final pulumi.Input<String>? lastBackupName;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the Long Term Retention backup to be used for restore of this managed database.
  final pulumi.Input<String>? longTermRetentionBackupResourceId;
  /// The name of the managed instance.
  final pulumi.Input<String> managedInstanceName;
  /// The resource identifier of the recoverable database associated with create operation of this database.
  final pulumi.Input<String>? recoverableDatabaseId;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The restorable dropped database resource id to restore when creating this database.
  final pulumi.Input<String>? restorableDroppedDatabaseId;
  /// Conditional. If createMode is PointInTimeRestore, this value is required. Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  final pulumi.Input<String>? restorePointInTime;
  /// The resource identifier of the source database associated with create operation of this database.
  final pulumi.Input<String>? sourceDatabaseId;
  /// Conditional. If createMode is RestoreExternalBackup, this value is used. Specifies the identity used for storage container authentication. Can be 'SharedAccessSignature' or 'ManagedIdentity'; if not specified 'SharedAccessSignature' is assumed.
  final pulumi.Input<String>? storageContainerIdentity;
  /// Conditional. If createMode is RestoreExternalBackup and storageContainerIdentity is not ManagedIdentity, this value is required. Specifies the storage container sas token.
  final pulumi.Input<String>? storageContainerSasToken;
  /// Conditional. If createMode is RestoreExternalBackup, this value is required. Specifies the uri of the storage container where backups for this restore are stored.
  final pulumi.Input<String>? storageContainerUri;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ManagedDatabaseArgs].
  /// [autoCompleteRestore] Whether to auto complete restore of this managed database.
  /// [catalogCollation] Collation of the metadata catalog.
  /// [collation] Collation of the managed database.
  /// [createMode] Managed database create mode. PointInTimeRestore: Create a database by restoring a point in time backup of an existing database. SourceDatabaseName, SourceManagedInstanceName and PointInTime must be specified. RestoreExternalBackup: Create a database by restoring from external backup files. Collation, StorageContainerUri and StorageContainerSasToken must be specified. Recovery: Creates a database by restoring a geo-replicated backup. RecoverableDatabaseId must be specified as the recoverable database resource ID to restore. RestoreLongTermRetentionBackup: Create a database by restoring from a long term retention backup (longTermRetentionBackupResourceId required).
  /// [crossSubscriptionRestorableDroppedDatabaseId] The restorable cross-subscription dropped database resource id to restore when creating this database.
  /// [crossSubscriptionSourceDatabaseId] The resource identifier of the cross-subscription source database associated with create operation of this database.
  /// [crossSubscriptionTargetManagedInstanceId] Target managed instance id used in cross-subscription restore.
  /// [databaseName] The name of the database.
  /// [isLedgerOn] Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  /// [lastBackupName] Last backup file name for restore of this managed database.
  /// [location] Resource location.
  /// [longTermRetentionBackupResourceId] The name of the Long Term Retention backup to be used for restore of this managed database.
  /// [managedInstanceName] The name of the managed instance.
  /// [recoverableDatabaseId] The resource identifier of the recoverable database associated with create operation of this database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [restorableDroppedDatabaseId] The restorable dropped database resource id to restore when creating this database.
  /// [restorePointInTime] Conditional. If createMode is PointInTimeRestore, this value is required. Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database.
  /// [sourceDatabaseId] The resource identifier of the source database associated with create operation of this database.
  /// [storageContainerIdentity] Conditional. If createMode is RestoreExternalBackup, this value is used. Specifies the identity used for storage container authentication. Can be 'SharedAccessSignature' or 'ManagedIdentity'; if not specified 'SharedAccessSignature' is assumed.
  /// [storageContainerSasToken] Conditional. If createMode is RestoreExternalBackup and storageContainerIdentity is not ManagedIdentity, this value is required. Specifies the storage container sas token.
  /// [storageContainerUri] Conditional. If createMode is RestoreExternalBackup, this value is required. Specifies the uri of the storage container where backups for this restore are stored.
  /// [tags] Resource tags.
  ManagedDatabaseArgs({
    bool? autoCompleteRestore,
    String? catalogCollation,
    String? collation,
    String? createMode,
    String? crossSubscriptionRestorableDroppedDatabaseId,
    String? crossSubscriptionSourceDatabaseId,
    String? crossSubscriptionTargetManagedInstanceId,
    String? databaseName,
    bool? isLedgerOn,
    String? lastBackupName,
    String? location,
    String? longTermRetentionBackupResourceId,
    required String managedInstanceName,
    String? recoverableDatabaseId,
    required String resourceGroupName,
    String? restorableDroppedDatabaseId,
    String? restorePointInTime,
    String? sourceDatabaseId,
    String? storageContainerIdentity,
    String? storageContainerSasToken,
    String? storageContainerUri,
    Map<String, String>? tags,
  }) :
      autoCompleteRestore = pulumi.Input.asOptionalInput<bool>(autoCompleteRestore),
      catalogCollation = pulumi.Input.asOptionalInput<String>(catalogCollation),
      collation = pulumi.Input.asOptionalInput<String>(collation),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      crossSubscriptionRestorableDroppedDatabaseId = pulumi.Input.asOptionalInput<String>(crossSubscriptionRestorableDroppedDatabaseId),
      crossSubscriptionSourceDatabaseId = pulumi.Input.asOptionalInput<String>(crossSubscriptionSourceDatabaseId),
      crossSubscriptionTargetManagedInstanceId = pulumi.Input.asOptionalInput<String>(crossSubscriptionTargetManagedInstanceId),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      isLedgerOn = pulumi.Input.asOptionalInput<bool>(isLedgerOn),
      lastBackupName = pulumi.Input.asOptionalInput<String>(lastBackupName),
      location = pulumi.Input.asOptionalInput<String>(location),
      longTermRetentionBackupResourceId = pulumi.Input.asOptionalInput<String>(longTermRetentionBackupResourceId),
      managedInstanceName = pulumi.Input.asInput<String>(managedInstanceName),
      recoverableDatabaseId = pulumi.Input.asOptionalInput<String>(recoverableDatabaseId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restorableDroppedDatabaseId = pulumi.Input.asOptionalInput<String>(restorableDroppedDatabaseId),
      restorePointInTime = pulumi.Input.asOptionalInput<String>(restorePointInTime),
      sourceDatabaseId = pulumi.Input.asOptionalInput<String>(sourceDatabaseId),
      storageContainerIdentity = pulumi.Input.asOptionalInput<String>(storageContainerIdentity),
      storageContainerSasToken = pulumi.Input.asOptionalInput<String>(storageContainerSasToken),
      storageContainerUri = pulumi.Input.asOptionalInput<String>(storageContainerUri),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCompleteRestore': ?autoCompleteRestore,
      'catalogCollation': ?catalogCollation,
      'collation': ?collation,
      'createMode': ?createMode,
      'crossSubscriptionRestorableDroppedDatabaseId': ?crossSubscriptionRestorableDroppedDatabaseId,
      'crossSubscriptionSourceDatabaseId': ?crossSubscriptionSourceDatabaseId,
      'crossSubscriptionTargetManagedInstanceId': ?crossSubscriptionTargetManagedInstanceId,
      'databaseName': ?databaseName,
      'isLedgerOn': ?isLedgerOn,
      'lastBackupName': ?lastBackupName,
      'location': ?location,
      'longTermRetentionBackupResourceId': ?longTermRetentionBackupResourceId,
      'managedInstanceName': managedInstanceName,
      'recoverableDatabaseId': ?recoverableDatabaseId,
      'resourceGroupName': resourceGroupName,
      'restorableDroppedDatabaseId': ?restorableDroppedDatabaseId,
      'restorePointInTime': ?restorePointInTime,
      'sourceDatabaseId': ?sourceDatabaseId,
      'storageContainerIdentity': ?storageContainerIdentity,
      'storageContainerSasToken': ?storageContainerSasToken,
      'storageContainerUri': ?storageContainerUri,
      'tags': ?tags,
    };
  }

  factory ManagedDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return ManagedDatabaseArgs(
      autoCompleteRestore: map['autoCompleteRestore'] == null ? null : map['autoCompleteRestore'] as bool,
      catalogCollation: map['catalogCollation'] == null ? null : map['catalogCollation'] as String,
      collation: map['collation'] == null ? null : map['collation'] as String,
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      crossSubscriptionRestorableDroppedDatabaseId: map['crossSubscriptionRestorableDroppedDatabaseId'] == null ? null : map['crossSubscriptionRestorableDroppedDatabaseId'] as String,
      crossSubscriptionSourceDatabaseId: map['crossSubscriptionSourceDatabaseId'] == null ? null : map['crossSubscriptionSourceDatabaseId'] as String,
      crossSubscriptionTargetManagedInstanceId: map['crossSubscriptionTargetManagedInstanceId'] == null ? null : map['crossSubscriptionTargetManagedInstanceId'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      isLedgerOn: map['isLedgerOn'] == null ? null : map['isLedgerOn'] as bool,
      lastBackupName: map['lastBackupName'] == null ? null : map['lastBackupName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      longTermRetentionBackupResourceId: map['longTermRetentionBackupResourceId'] == null ? null : map['longTermRetentionBackupResourceId'] as String,
      managedInstanceName: map['managedInstanceName'] as String,
      recoverableDatabaseId: map['recoverableDatabaseId'] == null ? null : map['recoverableDatabaseId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      restorableDroppedDatabaseId: map['restorableDroppedDatabaseId'] == null ? null : map['restorableDroppedDatabaseId'] as String,
      restorePointInTime: map['restorePointInTime'] == null ? null : map['restorePointInTime'] as String,
      sourceDatabaseId: map['sourceDatabaseId'] == null ? null : map['sourceDatabaseId'] as String,
      storageContainerIdentity: map['storageContainerIdentity'] == null ? null : map['storageContainerIdentity'] as String,
      storageContainerSasToken: map['storageContainerSasToken'] == null ? null : map['storageContainerSasToken'] as String,
      storageContainerUri: map['storageContainerUri'] == null ? null : map['storageContainerUri'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

