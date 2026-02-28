// ignore_for_file: unused_element, unnecessary_cast


/// Information about a backup.
class BackupInfoResponse {
  /// Name of the backup.
  final String backup;
  /// This time that the backup was finished. Row data in the backup will be no newer than this timestamp.
  final String endTime;
  /// Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.
  final String sourceBackup;
  /// Name of the table the backup was created from.
  final String sourceTable;
  /// The time that the backup was started. Row data in the backup will be no older than this timestamp.
  final String startTime;

  /// Creates a new [BackupInfoResponse].
  /// [backup] Name of the backup.
  /// [endTime] This time that the backup was finished. Row data in the backup will be no newer than this timestamp.
  /// [sourceBackup] Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.
  /// [sourceTable] Name of the table the backup was created from.
  /// [startTime] The time that the backup was started. Row data in the backup will be no older than this timestamp.
  BackupInfoResponse({
    required this.backup,
    required this.endTime,
    required this.sourceBackup,
    required this.sourceTable,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': backup,
      'endTime': endTime,
      'sourceBackup': sourceBackup,
      'sourceTable': sourceTable,
      'startTime': startTime,
    };
  }

  factory BackupInfoResponse.fromMap(Map<String, dynamic> map) {
    return BackupInfoResponse(
      backup: map['backup'] as String,
      endTime: map['endTime'] as String,
      sourceBackup: map['sourceBackup'] as String,
      sourceTable: map['sourceTable'] as String,
      startTime: map['startTime'] as String,
    );
  }
}

