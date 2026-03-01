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
    required pulumi.Output<String> dbInstanceId,
    pulumi.Output<String>? endTime,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? startTime,
  }) :
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      startTime = pulumi.Input.asOptionalInput<String>(startTime);

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
      dbInstanceId: pulumi.Output.create<String>(map['dbInstanceId'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
    );
  }
}

