// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_backup_backup/get_backup_backup.dart';

/// Result data returned by getBackup.
class GetBackupResult {
  /// Name of the Backup Vault associated with Backup.
  final String backupVaultId;

  /// List of all backups under data source. Structure is defined below.
  final List<GetBackupBackup> backups;

  /// The time when the backup was created.
  final String createTime;

  /// Name of the Data Source associated with Backup.
  final String dataSourceId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Location of the resource.
  final String location;

  /// Name of the resource.
  final String name;
  final String project;

  GetBackupResult({
    required this.backupVaultId,
    required this.backups,
    required this.createTime,
    required this.dataSourceId,
    required this.id,
    required this.location,
    required this.name,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupVaultId'] = backupVaultId;
    map['backups'] = Input.encodeList<GetBackupBackup, Map<String, dynamic>>(
        backups, (value) => value.toMap());
    map['createTime'] = createTime;
    map['dataSourceId'] = dataSourceId;
    map['id'] = id;
    map['location'] = location;
    map['name'] = name;
    map['project'] = project;
    return map;
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      backupVaultId: map['backupVaultId'] as String,
      backups: Input.decodeList<GetBackupBackup>(
          map['backups'],
          (value) =>
              GetBackupBackup.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      dataSourceId: map['dataSourceId'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
    );
  }
}
