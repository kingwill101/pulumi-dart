// ignore_for_file: unused_element, unnecessary_cast


/// Backup properties of a server.
class BackupResponse {
  /// Backup retention days for the server.
  final int? backupRetentionDays;
  /// Earliest restore point time (ISO8601 format) for a server.
  final String earliestRestoreDate;
  /// Indicates if the server is configured to create geographically redundant backups.
  final String? geoRedundantBackup;

  /// Creates a new [BackupResponse].
  /// [backupRetentionDays] Backup retention days for the server.
  /// [earliestRestoreDate] Earliest restore point time (ISO8601 format) for a server.
  /// [geoRedundantBackup] Indicates if the server is configured to create geographically redundant backups.
  BackupResponse({
    this.backupRetentionDays,
    required this.earliestRestoreDate,
    this.geoRedundantBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionDays': ?backupRetentionDays,
      'earliestRestoreDate': earliestRestoreDate,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory BackupResponse.fromMap(Map<String, dynamic> map) {
    return BackupResponse(
      backupRetentionDays: map['backupRetentionDays'] == null ? null : map['backupRetentionDays'] as int,
      earliestRestoreDate: map['earliestRestoreDate'] as String,
      geoRedundantBackup: map['geoRedundantBackup'] == null ? null : map['geoRedundantBackup'] as String,
    );
  }
}

