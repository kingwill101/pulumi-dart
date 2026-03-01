// ignore_for_file: unused_element, unnecessary_cast


class GetLogBackupsLogbackup {
  /// The ID of the Master node of the instance.
  final String dbInstanceId;
  /// The first ID of the resource
  final String logBackupId;
  /// Log file name (OSS path).
  final String logFileName;
  /// Size of the backup log file. Unit: Byte.
  final int logFileSize;
  /// The log timestamp.
  final String logTime;
  /// Total number of records.
  final int recordTotal;
  /// The node name.
  final String segmentName;

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
      dbInstanceId: map['dbInstanceId'] as String,
      logBackupId: map['logBackupId'] as String,
      logFileName: map['logFileName'] as String,
      logFileSize: map['logFileSize'] as int,
      logTime: map['logTime'] as String,
      recordTotal: map['recordTotal'] as int,
      segmentName: map['segmentName'] as String,
    );
  }
}

