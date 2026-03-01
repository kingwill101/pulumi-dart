// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_backup_setting_response.dart';

/// Result data returned by listWebAppBackupStatusSecrets.
class ListWebAppBackupStatusSecretsResult {
  /// Id of the backup.
  final int backupId;
  /// Name of the blob which contains data for this backup.
  final String blobName;
  /// Unique correlation identifier. Please use this along with the timestamp while communicating with Azure support.
  final String correlationId;
  /// Timestamp of the backup creation.
  final String created;
  /// List of databases included in the backup.
  final List<DatabaseBackupSettingResponse> databases;
  /// Timestamp when this backup finished.
  final String finishedTimeStamp;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Timestamp of a last restore operation which used this backup.
  final String lastRestoreTimeStamp;
  /// Details regarding this backup. Might contain an error message.
  final String log;
  /// Resource Name.
  final String name;
  /// True if this backup has been created due to a schedule being triggered.
  final bool scheduled;
  /// Size of the backup in bytes.
  final double sizeInBytes;
  /// Backup status.
  final String status;
  /// SAS URL for the storage account container which contains this backup.
  final String storageAccountUrl;
  /// Resource type.
  final String type;
  /// Size of the original web app which has been backed up.
  final double websiteSizeInBytes;

  /// Creates a new [ListWebAppBackupStatusSecretsResult].
  /// [backupId] Id of the backup.
  /// [blobName] Name of the blob which contains data for this backup.
  /// [correlationId] Unique correlation identifier. Please use this along with the timestamp while communicating with Azure support.
  /// [created] Timestamp of the backup creation.
  /// [databases] List of databases included in the backup.
  /// [finishedTimeStamp] Timestamp when this backup finished.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [lastRestoreTimeStamp] Timestamp of a last restore operation which used this backup.
  /// [log] Details regarding this backup. Might contain an error message.
  /// [name] Resource Name.
  /// [scheduled] True if this backup has been created due to a schedule being triggered.
  /// [sizeInBytes] Size of the backup in bytes.
  /// [status] Backup status.
  /// [storageAccountUrl] SAS URL for the storage account container which contains this backup.
  /// [type] Resource type.
  /// [websiteSizeInBytes] Size of the original web app which has been backed up.
  ListWebAppBackupStatusSecretsResult({
    required this.backupId,
    required this.blobName,
    required this.correlationId,
    required this.created,
    required this.databases,
    required this.finishedTimeStamp,
    required this.id,
    this.kind,
    required this.lastRestoreTimeStamp,
    required this.log,
    required this.name,
    required this.scheduled,
    required this.sizeInBytes,
    required this.status,
    required this.storageAccountUrl,
    required this.type,
    required this.websiteSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'blobName': blobName,
      'correlationId': correlationId,
      'created': created,
      'databases': pulumi.Input.encodeList<DatabaseBackupSettingResponse, Map<String, dynamic>>(databases, (value) => value.toMap()),
      'finishedTimeStamp': finishedTimeStamp,
      'id': id,
      'kind': ?kind,
      'lastRestoreTimeStamp': lastRestoreTimeStamp,
      'log': log,
      'name': name,
      'scheduled': scheduled,
      'sizeInBytes': sizeInBytes,
      'status': status,
      'storageAccountUrl': storageAccountUrl,
      'type': type,
      'websiteSizeInBytes': websiteSizeInBytes,
    };
  }

  factory ListWebAppBackupStatusSecretsResult.fromMap(Map<String, dynamic> map) {
    return ListWebAppBackupStatusSecretsResult(
      backupId: map['backupId'] as int,
      blobName: map['blobName'] as String,
      correlationId: map['correlationId'] as String,
      created: map['created'] as String,
      databases: pulumi.Input.decodeList<DatabaseBackupSettingResponse>(map['databases'], (value) => DatabaseBackupSettingResponse.fromMap((value as Map).cast<String, dynamic>())),
      finishedTimeStamp: map['finishedTimeStamp'] as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      lastRestoreTimeStamp: map['lastRestoreTimeStamp'] as String,
      log: map['log'] as String,
      name: map['name'] as String,
      scheduled: map['scheduled'] as bool,
      sizeInBytes: map['sizeInBytes'] as double,
      status: map['status'] as String,
      storageAccountUrl: map['storageAccountUrl'] as String,
      type: map['type'] as String,
      websiteSizeInBytes: map['websiteSizeInBytes'] as double,
    );
  }
}

