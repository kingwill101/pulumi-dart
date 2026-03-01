// ignore_for_file: unused_element, unnecessary_cast


/// Storage Profile properties of a server
class BackupResponse {
  /// Backup interval hours for the server.
  final int? backupIntervalHours;
  /// Backup retention days for the server.
  final int? backupRetentionDays;
  /// Earliest restore point creation time (ISO8601 format)
  final String earliestRestoreDate;
  /// Whether or not geo redundant backup is enabled.
  final String? geoRedundantBackup;

  /// Creates a new [BackupResponse].
  /// [backupIntervalHours] Backup interval hours for the server.
  /// [backupRetentionDays] Backup retention days for the server.
  /// [earliestRestoreDate] Earliest restore point creation time (ISO8601 format)
  /// [geoRedundantBackup] Whether or not geo redundant backup is enabled.
  BackupResponse({
    this.backupIntervalHours,
    this.backupRetentionDays,
    required this.earliestRestoreDate,
    this.geoRedundantBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupIntervalHours': ?backupIntervalHours,
      'backupRetentionDays': ?backupRetentionDays,
      'earliestRestoreDate': earliestRestoreDate,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory BackupResponse.fromMap(Map<String, dynamic> map) {
    return BackupResponse(
      backupIntervalHours: map['backupIntervalHours'] == null ? null : map['backupIntervalHours'] as int,
      backupRetentionDays: map['backupRetentionDays'] == null ? null : map['backupRetentionDays'] as int,
      earliestRestoreDate: map['earliestRestoreDate'] as String,
      geoRedundantBackup: map['geoRedundantBackup'] == null ? null : map['geoRedundantBackup'] as String,
    );
  }
}

