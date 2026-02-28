// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_info_response.dart';

/// Result data returned by getBackup.
class GetBackupResult {
  /// The encryption information for the backup.
  final EncryptionInfoResponse encryptionInfo;

  /// `end_time` is the time that the backup was finished. The row data in the backup will be no newer than this timestamp.
  final String endTime;

  /// The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 90 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
  final String expireTime;

  /// A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
  final String name;

  /// Size of the backup in bytes.
  final String sizeBytes;

  /// Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.
  final String sourceBackup;

  /// Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects/{project}/instances/{instance}/tables/{source_table}`.
  final String sourceTable;

  /// `start_time` is the time that the backup was started (i.e. approximately the time the CreateBackup request is received). The row data in this backup will be no older than this timestamp.
  final String startTime;

  /// The current state of the backup.
  final String state;

  /// Creates a new [GetBackupResult].
  /// [encryptionInfo] The encryption information for the backup.
  /// [endTime] `end_time` is the time that the backup was finished. The row data in the backup will be no newer than this timestamp.
  /// [expireTime] The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 90 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
  /// [name] A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
  /// [sizeBytes] Size of the backup in bytes.
  /// [sourceBackup] Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.
  /// [sourceTable] Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects/{project}/instances/{instance}/tables/{source_table}`.
  /// [startTime] `start_time` is the time that the backup was started (i.e. approximately the time the CreateBackup request is received). The row data in this backup will be no older than this timestamp.
  /// [state] The current state of the backup.
  GetBackupResult({
    required this.encryptionInfo,
    required this.endTime,
    required this.expireTime,
    required this.name,
    required this.sizeBytes,
    required this.sourceBackup,
    required this.sourceTable,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['encryptionInfo'] = encryptionInfo.toMap();
    map['endTime'] = endTime;
    map['expireTime'] = expireTime;
    map['name'] = name;
    map['sizeBytes'] = sizeBytes;
    map['sourceBackup'] = sourceBackup;
    map['sourceTable'] = sourceTable;
    map['startTime'] = startTime;
    map['state'] = state;
    return map;
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      encryptionInfo: EncryptionInfoResponse.fromMap(
          (map['encryptionInfo'] as Map).cast<String, dynamic>()),
      endTime: map['endTime'] as String,
      expireTime: map['expireTime'] as String,
      name: map['name'] as String,
      sizeBytes: map['sizeBytes'] as String,
      sourceBackup: map['sourceBackup'] as String,
      sourceTable: map['sourceTable'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
    );
  }
}
