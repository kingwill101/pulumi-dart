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
    pulumi.Output<String>? backupMode,
    pulumi.Output<String>? dataBackupId,
    pulumi.Output<String>? dataType,
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? endTime,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? startTime,
    pulumi.Output<String>? status,
  }) :
      backupMode = pulumi.Input.asOptionalInput<String>(backupMode),
      dataBackupId = pulumi.Input.asOptionalInput<String>(dataBackupId),
      dataType = pulumi.Input.asOptionalInput<String>(dataType),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      startTime = pulumi.Input.asOptionalInput<String>(startTime),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      backupMode: map['backupMode'] == null ? null : pulumi.Output.create<String>(map['backupMode'] as String),
      dataBackupId: map['dataBackupId'] == null ? null : pulumi.Output.create<String>(map['dataBackupId'] as String),
      dataType: map['dataType'] == null ? null : pulumi.Output.create<String>(map['dataType'] as String),
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

