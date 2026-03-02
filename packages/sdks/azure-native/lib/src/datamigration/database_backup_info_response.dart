// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about backup files when existing backup mode is used.
class DatabaseBackupInfoResponse {
  /// The list of backup files for the current database.
  final pulumi.Input<List<String>> backupFiles;
  /// Date and time when the backup operation finished.
  final pulumi.Input<String> backupFinishDate;
  /// Backup Type.
  final pulumi.Input<String> backupType;
  /// Database name.
  final pulumi.Input<String> databaseName;
  /// Number of files in the backup set.
  final pulumi.Input<int> familyCount;
  /// Whether the backup set is compressed
  final pulumi.Input<bool> isCompressed;
  /// Database was damaged when backed up, but the backup operation was requested to continue despite errors.
  final pulumi.Input<bool> isDamaged;
  /// Position of current database backup in the file.
  final pulumi.Input<int> position;

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
      backupFiles: ((map['backupFiles'] as List).cast<String>()).input(),
      backupFinishDate: (map['backupFinishDate'] as String).input(),
      backupType: (map['backupType'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      familyCount: (map['familyCount'] as int).input(),
      isCompressed: (map['isCompressed'] as bool).input(),
      isDamaged: (map['isDamaged'] as bool).input(),
      position: (map['position'] as int).input(),
    );
  }
}

