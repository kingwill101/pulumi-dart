// ignore_for_file: unused_element, unnecessary_cast


/// Information about backup files when existing backup mode is used.
class DatabaseBackupInfoResponse {
  /// The list of backup files for the current database.
  final List<String> backupFiles;
  /// Date and time when the backup operation finished.
  final String backupFinishDate;
  /// Backup Type.
  final String backupType;
  /// Database name.
  final String databaseName;
  /// Number of files in the backup set.
  final int familyCount;
  /// Whether the backup set is compressed
  final bool isCompressed;
  /// Database was damaged when backed up, but the backup operation was requested to continue despite errors.
  final bool isDamaged;
  /// Position of current database backup in the file.
  final int position;

  /// Creates a new [DatabaseBackupInfoResponse].
  /// [backupFiles] The list of backup files for the current database.
  /// [backupFinishDate] Date and time when the backup operation finished.
  /// [backupType] Backup Type.
  /// [databaseName] Database name.
  /// [familyCount] Number of files in the backup set.
  /// [isCompressed] Whether the backup set is compressed
  /// [isDamaged] Database was damaged when backed up, but the backup operation was requested to continue despite errors.
  /// [position] Position of current database backup in the file.
  DatabaseBackupInfoResponse({
    required this.backupFiles,
    required this.backupFinishDate,
    required this.backupType,
    required this.databaseName,
    required this.familyCount,
    required this.isCompressed,
    required this.isDamaged,
    required this.position,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupFiles': backupFiles,
      'backupFinishDate': backupFinishDate,
      'backupType': backupType,
      'databaseName': databaseName,
      'familyCount': familyCount,
      'isCompressed': isCompressed,
      'isDamaged': isDamaged,
      'position': position,
    };
  }

  factory DatabaseBackupInfoResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseBackupInfoResponse(
      backupFiles: (map['backupFiles'] as List).cast<String>(),
      backupFinishDate: map['backupFinishDate'] as String,
      backupType: map['backupType'] as String,
      databaseName: map['databaseName'] as String,
      familyCount: map['familyCount'] as int,
      isCompressed: map['isCompressed'] as bool,
      isDamaged: map['isDamaged'] as bool,
      position: map['position'] as int,
    );
  }
}

