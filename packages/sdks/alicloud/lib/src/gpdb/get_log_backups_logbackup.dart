// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLogBackupsLogbackup {
  /// The ID of the Master node of the instance.
  final pulumi.Input<String> dbInstanceId;
  /// The first ID of the resource
  final pulumi.Input<String> logBackupId;
  /// Log file name (OSS path).
  final pulumi.Input<String> logFileName;
  /// Size of the backup log file. Unit: Byte.
  final pulumi.Input<int> logFileSize;
  /// The log timestamp.
  final pulumi.Input<String> logTime;
  /// Total number of records.
  final pulumi.Input<int> recordTotal;
  /// The node name.
  final pulumi.Input<String> segmentName;

  /// Creates a new [GetLogBackupsLogbackup].
  /// [dbInstanceId] The ID of the Master node of the instance.
  /// [logBackupId] The first ID of the resource
  /// [logFileName] Log file name (OSS path).
  /// [logFileSize] Size of the backup log file. Unit: Byte.
  /// [logTime] The log timestamp.
  /// [recordTotal] Total number of records.
  /// [segmentName] The node name.
  GetLogBackupsLogbackup({
    required this.dbInstanceId,
    required this.logBackupId,
    required this.logFileName,
    required this.logFileSize,
    required this.logTime,
    required this.recordTotal,
    required this.segmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbInstanceId': dbInstanceId,
      'logBackupId': logBackupId,
      'logFileName': logFileName,
      'logFileSize': logFileSize,
      'logTime': logTime,
      'recordTotal': recordTotal,
      'segmentName': segmentName,
    };
  }

  factory GetLogBackupsLogbackup.fromMap(Map<String, dynamic> map) {
    return GetLogBackupsLogbackup(
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      logBackupId: pulumi.Input.fromValue(map['logBackupId'] as String),
      logFileName: pulumi.Input.fromValue(map['logFileName'] as String),
      logFileSize: pulumi.Input.fromValue(map['logFileSize'] as int),
      logTime: pulumi.Input.fromValue(map['logTime'] as String),
      recordTotal: pulumi.Input.fromValue(map['recordTotal'] as int),
      segmentName: pulumi.Input.fromValue(map['segmentName'] as String),
    );
  }
}

