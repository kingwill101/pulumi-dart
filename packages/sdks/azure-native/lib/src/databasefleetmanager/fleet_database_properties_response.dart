// ignore_for_file: unused_element, unnecessary_cast

import 'identity_response.dart';
import 'transparent_data_encryption_response.dart';

/// Fleet database properties.
class FleetDatabasePropertiesResponse {
  /// Backup retention in days.
  final int backupRetentionDays;
  /// Database collation.
  final String? collation;
  /// Connection string to connect to the database with.
  final String connectionString;
  /// Create mode. Available options: Default - Create a database. Copy - Copy the source database (source database name must be specified) PointInTimeRestore - Create a database by restoring source database from a point in time (source database name and restore from time must be specified)
  final String? createMode;
  /// Maximum database size in Gb.
  final int databaseSizeGbMax;
  /// Earliest restore time.
  final String earliestRestoreTime;
  /// Identity property.
  final IdentityResponse? identity;
  /// Latest restore time.
  final String latestRestoreTime;
  /// Resource identifier for the underlying database resource.
  final String originalDatabaseId;
  /// Database state.
  final String provisioningState;
  /// If true, database is recoverable.
  final bool recoverable;
  /// Additional database properties to be applied as the underlying database resource tags.
  final Map<String, String>? resourceTags;
  /// Restore from time when CreateMode is PointInTimeRestore.
  final String? restoreFromTime;
  /// Source database name used when CreateMode is Copy or PointInTimeRestore.
  final String? sourceDatabaseName;
  /// Name of the tier this database belongs to.
  final String? tierName;
  /// Transparent Data Encryption properties
  final TransparentDataEncryptionResponse? transparentDataEncryption;

  /// Creates a new [FleetDatabasePropertiesResponse].
  /// [backupRetentionDays] Backup retention in days.
  /// [collation] Database collation.
  /// [connectionString] Connection string to connect to the database with.
  /// [createMode] Create mode. Available options: Default - Create a database. Copy - Copy the source database (source database name must be specified) PointInTimeRestore - Create a database by restoring source database from a point in time (source database name and restore from time must be specified)
  /// [databaseSizeGbMax] Maximum database size in Gb.
  /// [earliestRestoreTime] Earliest restore time.
  /// [identity] Identity property.
  /// [latestRestoreTime] Latest restore time.
  /// [originalDatabaseId] Resource identifier for the underlying database resource.
  /// [provisioningState] Database state.
  /// [recoverable] If true, database is recoverable.
  /// [resourceTags] Additional database properties to be applied as the underlying database resource tags.
  /// [restoreFromTime] Restore from time when CreateMode is PointInTimeRestore.
  /// [sourceDatabaseName] Source database name used when CreateMode is Copy or PointInTimeRestore.
  /// [tierName] Name of the tier this database belongs to.
  /// [transparentDataEncryption] Transparent Data Encryption properties
  FleetDatabasePropertiesResponse({
    required this.backupRetentionDays,
    this.collation,
    required this.connectionString,
    this.createMode,
    required this.databaseSizeGbMax,
    required this.earliestRestoreTime,
    this.identity,
    required this.latestRestoreTime,
    required this.originalDatabaseId,
    required this.provisioningState,
    required this.recoverable,
    this.resourceTags,
    this.restoreFromTime,
    this.sourceDatabaseName,
    this.tierName,
    this.transparentDataEncryption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionDays': backupRetentionDays,
      'collation': ?collation,
      'connectionString': connectionString,
      'createMode': ?createMode,
      'databaseSizeGbMax': databaseSizeGbMax,
      'earliestRestoreTime': earliestRestoreTime,
      'identity': ?identity == null ? null : identity!.toMap(),
      'latestRestoreTime': latestRestoreTime,
      'originalDatabaseId': originalDatabaseId,
      'provisioningState': provisioningState,
      'recoverable': recoverable,
      'resourceTags': ?resourceTags,
      'restoreFromTime': ?restoreFromTime,
      'sourceDatabaseName': ?sourceDatabaseName,
      'tierName': ?tierName,
      'transparentDataEncryption': ?transparentDataEncryption == null ? null : transparentDataEncryption!.toMap(),
    };
  }

  factory FleetDatabasePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FleetDatabasePropertiesResponse(
      backupRetentionDays: map['backupRetentionDays'] as int,
      collation: map['collation'] == null ? null : map['collation'] as String,
      connectionString: map['connectionString'] as String,
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      databaseSizeGbMax: map['databaseSizeGbMax'] as int,
      earliestRestoreTime: map['earliestRestoreTime'] as String,
      identity: map['identity'] == null ? null : IdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      latestRestoreTime: map['latestRestoreTime'] as String,
      originalDatabaseId: map['originalDatabaseId'] as String,
      provisioningState: map['provisioningState'] as String,
      recoverable: map['recoverable'] as bool,
      resourceTags: map['resourceTags'] == null ? null : (map['resourceTags'] as Map).cast<String, String>(),
      restoreFromTime: map['restoreFromTime'] == null ? null : map['restoreFromTime'] as String,
      sourceDatabaseName: map['sourceDatabaseName'] == null ? null : map['sourceDatabaseName'] as String,
      tierName: map['tierName'] == null ? null : map['tierName'] as String,
      transparentDataEncryption: map['transparentDataEncryption'] == null ? null : TransparentDataEncryptionResponse.fromMap((map['transparentDataEncryption'] as Map).cast<String, dynamic>()),
    );
  }
}

