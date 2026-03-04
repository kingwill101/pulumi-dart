// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_get_data_backups_get_data_backups_args_doc}
/// Arguments for getDataBackups.
/// {@endtemplate}
/// {@macro pulumi_gpdb_get_data_backups_get_data_backups_args_doc}
class GetDataBackupsArgs {
  /// Backup mode.Full Backup Value Description:-**Automated**: The system is automatically backed up.-**Manual**: Manual backup.Recovery point value description:-**Automated**: The recovery point after a full backup.-**Manual**: The recovery point triggered manually by the user.-**Period**: The recovery point triggered periodically because of the backup policy.
  final pulumi.Input<String>? backupMode;

  /// The first ID of the resource
  final pulumi.Input<String>? dataBackupId;

  /// The backup type. Value Description:-**DATA**: Full backup.-**RESTOREPOI**: Recoverable point.
  final pulumi.Input<String>? dataType;

  /// The instance ID.
  final pulumi.Input<String> dbInstanceId;

  /// The query end time, which must be greater than the query start time. Format: yyyy-MM-ddTHH:mmZ(UTC time).
  final pulumi.Input<String>? endTime;

  /// A list of Databackup IDs.
  final pulumi.Input<List<String>>? ids;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Current page number.
  final pulumi.Input<int>? pageNumber;

  /// Number of records per page.
  final pulumi.Input<int>? pageSize;

  /// The query start time. Format: yyyy-MM-ddTHH:mmZ(UTC time).
  final pulumi.Input<String>? startTime;

  /// Backup set status. Value Description:-Success: The backup has been completed.-Failed: Backup Failed.If not, return all.
  final pulumi.Input<String>? status;

  /// Creates a new [GetDataBackupsArgs].
  /// [backupMode] Backup mode.Full Backup Value Description:-**Automated**: The system is automatically backed up.-**Manual**: Manual backup.Recovery point value description:-**Automated**: The recovery point after a full backup.-**Manual**: The recovery point triggered manually by the user.-**Period**: The recovery point triggered periodically because of the backup policy.
  /// [dataBackupId] The first ID of the resource
  /// [dataType] The backup type. Value Description:-**DATA**: Full backup.-**RESTOREPOI**: Recoverable point.
  /// [dbInstanceId] The instance ID.
  /// [endTime] The query end time, which must be greater than the query start time. Format: yyyy-MM-ddTHH:mmZ(UTC time).
  /// [ids] A list of Databackup IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Current page number.
  /// [pageSize] Number of records per page.
  /// [startTime] The query start time. Format: yyyy-MM-ddTHH:mmZ(UTC time).
  /// [status] Backup set status. Value Description:-Success: The backup has been completed.-Failed: Backup Failed.If not, return all.
  GetDataBackupsArgs({
    this.backupMode,
    this.dataBackupId,
    this.dataType,
    required this.dbInstanceId,
    this.endTime,
    this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.startTime,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupMode': ?backupMode,
      'dataBackupId': ?dataBackupId,
      'dataType': ?dataType,
      'dbInstanceId': dbInstanceId,
      'endTime': ?endTime,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'startTime': ?startTime,
      'status': ?status,
    };
  }

  factory GetDataBackupsArgs.fromMap(Map<String, dynamic> map) {
    return GetDataBackupsArgs(
      backupMode: (() {
        final guardedValue = map['backupMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataBackupId: (() {
        final guardedValue = map['dataBackupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataType: (() {
        final guardedValue = map['dataType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      endTime: (() {
        final guardedValue = map['endTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      startTime: (() {
        final guardedValue = map['startTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
