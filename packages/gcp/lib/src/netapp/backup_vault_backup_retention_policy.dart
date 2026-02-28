// ignore_for_file: unused_element, unnecessary_cast

class BackupVaultBackupRetentionPolicy {
  /// Minimum retention duration in days for backups in the backup vault.
  final int backupMinimumEnforcedRetentionDays;

  /// Indicates if the daily backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  final bool? dailyBackupImmutable;

  /// Indicates if the manual backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  final bool? manualBackupImmutable;

  /// Indicates if the monthly backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  final bool? monthlyBackupImmutable;

  /// Indicates if the weekly backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  final bool? weeklyBackupImmutable;

  /// Creates a new [BackupVaultBackupRetentionPolicy].
  /// [backupMinimumEnforcedRetentionDays] Minimum retention duration in days for backups in the backup vault.
  /// [dailyBackupImmutable] Indicates if the daily backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  /// [manualBackupImmutable] Indicates if the manual backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  /// [monthlyBackupImmutable] Indicates if the monthly backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  /// [weeklyBackupImmutable] Indicates if the weekly backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable, monthly_backup_immutable and manual_backup_immutable must be true.
  BackupVaultBackupRetentionPolicy({
    required this.backupMinimumEnforcedRetentionDays,
    this.dailyBackupImmutable,
    this.manualBackupImmutable,
    this.monthlyBackupImmutable,
    this.weeklyBackupImmutable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupMinimumEnforcedRetentionDays'] =
        backupMinimumEnforcedRetentionDays;
    final dailyBackupImmutableValue = dailyBackupImmutable;
    if (dailyBackupImmutableValue != null) {
      map['dailyBackupImmutable'] = dailyBackupImmutableValue;
    }
    final manualBackupImmutableValue = manualBackupImmutable;
    if (manualBackupImmutableValue != null) {
      map['manualBackupImmutable'] = manualBackupImmutableValue;
    }
    final monthlyBackupImmutableValue = monthlyBackupImmutable;
    if (monthlyBackupImmutableValue != null) {
      map['monthlyBackupImmutable'] = monthlyBackupImmutableValue;
    }
    final weeklyBackupImmutableValue = weeklyBackupImmutable;
    if (weeklyBackupImmutableValue != null) {
      map['weeklyBackupImmutable'] = weeklyBackupImmutableValue;
    }
    return map;
  }

  factory BackupVaultBackupRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return BackupVaultBackupRetentionPolicy(
      backupMinimumEnforcedRetentionDays:
          map['backupMinimumEnforcedRetentionDays'] as int,
      dailyBackupImmutable: map['dailyBackupImmutable'] == null
          ? null
          : map['dailyBackupImmutable'] as bool,
      manualBackupImmutable: map['manualBackupImmutable'] == null
          ? null
          : map['manualBackupImmutable'] as bool,
      monthlyBackupImmutable: map['monthlyBackupImmutable'] == null
          ? null
          : map['monthlyBackupImmutable'] as bool,
      weeklyBackupImmutable: map['weeklyBackupImmutable'] == null
          ? null
          : map['weeklyBackupImmutable'] as bool,
    );
  }
}
