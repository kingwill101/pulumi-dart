// ignore_for_file: unused_element, unnecessary_cast


/// The backup profile for the SQL server.
class BackupPolicy {
  /// The differential backup interval in hours.
  final int? differentialBackupHours;
  /// The value indicating days between full backups.
  final int? fullBackupDays;
  /// The retention period for all the databases in this managed instance.
  final int? retentionPeriodDays;
  /// The value indicating minutes between transaction log backups.
  final int? transactionLogBackupMinutes;

  /// Creates a new [BackupPolicy].
  /// [differentialBackupHours] The differential backup interval in hours.
  /// [fullBackupDays] The value indicating days between full backups.
  /// [retentionPeriodDays] The retention period for all the databases in this managed instance.
  /// [transactionLogBackupMinutes] The value indicating minutes between transaction log backups.
  BackupPolicy({
    this.differentialBackupHours,
    this.fullBackupDays,
    this.retentionPeriodDays,
    this.transactionLogBackupMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'differentialBackupHours': ?differentialBackupHours,
      'fullBackupDays': ?fullBackupDays,
      'retentionPeriodDays': ?retentionPeriodDays,
      'transactionLogBackupMinutes': ?transactionLogBackupMinutes,
    };
  }

  factory BackupPolicy.fromMap(Map<String, dynamic> map) {
    return BackupPolicy(
      differentialBackupHours: map['differentialBackupHours'] == null ? null : map['differentialBackupHours'] as int,
      fullBackupDays: map['fullBackupDays'] == null ? null : map['fullBackupDays'] as int,
      retentionPeriodDays: map['retentionPeriodDays'] == null ? null : map['retentionPeriodDays'] as int,
      transactionLogBackupMinutes: map['transactionLogBackupMinutes'] == null ? null : map['transactionLogBackupMinutes'] as int,
    );
  }
}

