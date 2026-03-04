// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_get_log_backups_get_log_backups_args_doc}
/// Arguments for getLogBackups.
/// {@endtemplate}
/// {@macro pulumi_gpdb_get_log_backups_get_log_backups_args_doc}
class GetLogBackupsArgs {
  /// The ID of the Master node of the instance.
  final pulumi.Input<String> dbInstanceId;

  /// The query end time, which must be greater than the query start time. Format: yyyy-MM-ddTHH:mmZ(UTC time).
  final pulumi.Input<String>? endTime;

  /// A list of Logbackup IDs.
  final pulumi.Input<List<String>>? ids;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Current page number.
  final pulumi.Input<int>? pageNumber;

  /// Number of records per page.
  final pulumi.Input<int>? pageSize;

  /// The query start time. Format: yyyy-MM-ddTHH:mmZ(UTC time).
  final pulumi.Input<String>? startTime;

  /// Creates a new [GetLogBackupsArgs].
  /// [dbInstanceId] The ID of the Master node of the instance.
  /// [endTime] The query end time, which must be greater than the query start time. Format: yyyy-MM-ddTHH:mmZ(UTC time).
  /// [ids] A list of Logbackup IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Current page number.
  /// [pageSize] Number of records per page.
  /// [startTime] The query start time. Format: yyyy-MM-ddTHH:mmZ(UTC time).
  GetLogBackupsArgs({
    required this.dbInstanceId,
    this.endTime,
    this.ids,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'endTime': ?endTime,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'startTime': ?startTime,
    };
  }

  factory GetLogBackupsArgs.fromMap(Map<String, dynamic> map) {
    return GetLogBackupsArgs(
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
    );
  }
}
