// ignore_for_file: unused_element, unnecessary_cast


/// Backup properties of a server.
class Backup {
  /// Backup retention days for the server.
  final int? backupRetentionDays;
  /// Indicates if the server is configured to create geographically redundant backups.
  final String? geoRedundantBackup;

  /// Creates a new [Backup].
  /// [backupRetentionDays] Backup retention days for the server.
  /// [geoRedundantBackup] Indicates if the server is configured to create geographically redundant backups.
  Backup({
    this.backupRetentionDays,
    this.geoRedundantBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRetentionDays': ?backupRetentionDays,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory Backup.fromMap(Map<String, dynamic> map) {
    return Backup(
      backupRetentionDays: map['backupRetentionDays'] == null ? null : map['backupRetentionDays'] as int,
      geoRedundantBackup: map['geoRedundantBackup'] == null ? null : map['geoRedundantBackup'] as String,
    );
  }
}

