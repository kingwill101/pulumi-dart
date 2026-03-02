// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_backups_backup.dart';

/// Result data returned by getDataBackups.
class GetDataBackupsResult {
  /// Backup mode.Full Backup Value Description:-**Automated**: The system is automatically backed up.-**Manual**: Manual backup.Recovery point value description:-**Automated**: The recovery point after a full backup.-**Manual**: The recovery point triggered manually by the user.-**Period**: The recovery point triggered periodically because of the backup policy.
  final String? backupMode;
  /// A list of Data Backup Entries. Each element contains the following attributes:
  final List<GetDataBackupsBackup> backups;
  final String? dataBackupId;
  /// The backup type. Value Description:-**DATA**: Full backup.-**RESTOREPOI**: Recoverable point.
  final String? dataType;
  /// The instance ID.
  final String dbInstanceId;
  final String? endTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Data Backup IDs.
  final List<String> ids;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;
  final String? startTime;
  /// Backup set status. Value Description:-Success: The backup has been completed.-Failed: Backup Failed.If not, return all.
  final String? status;

  /// Creates a new [GetDataBackupsResult].
  /// [backupMode] Backup mode.Full Backup Value Description:-**Automated**: The system is automatically backed up.-**Manual**: Manual backup.Recovery point value description:-**Automated**: The recovery point after a full backup.-**Manual**: The recovery point triggered manually by the user.-**Period**: The recovery point triggered periodically because of the backup policy.
  /// [backups] A list of Data Backup Entries. Each element contains the following attributes:
  /// [dataBackupId] Optional.
  /// [dataType] The backup type. Value Description:-**DATA**: Full backup.-**RESTOREPOI**: Recoverable point.
  /// [dbInstanceId] The instance ID.
  /// [endTime] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Data Backup IDs.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [startTime] Optional.
  /// [status] Backup set status. Value Description:-Success: The backup has been completed.-Failed: Backup Failed.If not, return all.
  GetDataBackupsResult({
    this.backupMode,
    required this.backups,
    this.dataBackupId,
    this.dataType,
    required this.dbInstanceId,
    this.endTime,
    required this.id,
    required this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupMode': ?backupMode,
      'backups': pulumi.Input.encodeList<GetDataBackupsBackup, Map<String, dynamic>>(backups, (value) => value.toMap()),
      'dataBackupId': ?dataBackupId,
      'dataType': ?dataType,
      'dbInstanceId': dbInstanceId,
      'endTime': ?endTime,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory GetDataBackupsResult.fromMap(Map<String, dynamic> map) {
    return GetDataBackupsResult(
      backupMode: map['backupMode'] == null ? null : map['backupMode']! as String,
      backups: pulumi.Input.decodeList<GetDataBackupsBackup>(map['backups'], (value) => GetDataBackupsBackup.fromMap((value as Map).cast<String, dynamic>())),
      dataBackupId: map['dataBackupId'] == null ? null : map['dataBackupId']! as String,
      dataType: map['dataType'] == null ? null : map['dataType']! as String,
      dbInstanceId: map['dbInstanceId'] as String,
      endTime: map['endTime'] == null ? null : map['endTime']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber']! as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize']! as int,
      startTime: map['startTime'] == null ? null : map['startTime']! as String,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

