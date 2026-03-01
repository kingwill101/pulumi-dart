// ignore_for_file: unused_element, unnecessary_cast


/// Storage Profile properties of a server
class Backup {
  /// Backup interval hours for the server.
  final int? backupIntervalHours;
  /// Backup retention days for the server.
  final int? backupRetentionDays;
  /// Whether or not geo redundant backup is enabled.
  final String? geoRedundantBackup;

  /// Creates a new [Backup].
  /// [backupIntervalHours] Backup interval hours for the server.
  /// [backupRetentionDays] Backup retention days for the server.
  /// [geoRedundantBackup] Whether or not geo redundant backup is enabled.
  Backup({
    this.backupIntervalHours,
    this.backupRetentionDays,
    this.geoRedundantBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupIntervalHours': ?backupIntervalHours,
      'backupRetentionDays': ?backupRetentionDays,
      'geoRedundantBackup': ?geoRedundantBackup,
    };
  }

  factory Backup.fromMap(Map<String, dynamic> map) {
    return Backup(
      backupIntervalHours: map['backupIntervalHours'] == null ? null : map['backupIntervalHours'] as int,
      backupRetentionDays: map['backupRetentionDays'] == null ? null : map['backupRetentionDays'] as int,
      geoRedundantBackup: map['geoRedundantBackup'] == null ? null : map['geoRedundantBackup'] as String,
    );
  }
}

