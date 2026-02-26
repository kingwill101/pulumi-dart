// ignore_for_file: unused_element, unnecessary_cast

class BackupVaultBackupRetentionPolicy {
  /// Minimum retention duration in days for backups in the backup vault.
  final int backupMinimumEnforcedRetentionDays;

  /// Indicates if the daily backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable,<span pulumi-lang-nodejs=" monthlyBackupImmutable " pulumi-lang-dotnet=" MonthlyBackupImmutable " pulumi-lang-go=" monthlyBackupImmutable " pulumi-lang-python=" monthly_backup_immutable " pulumi-lang-yaml=" monthlyBackupImmutable " pulumi-lang-java=" monthlyBackupImmutable "> monthly_backup_immutable </span>and<span pulumi-lang-nodejs=" manualBackupImmutable " pulumi-lang-dotnet=" ManualBackupImmutable " pulumi-lang-go=" manualBackupImmutable " pulumi-lang-python=" manual_backup_immutable " pulumi-lang-yaml=" manualBackupImmutable " pulumi-lang-java=" manualBackupImmutable "> manual_backup_immutable </span>must be true.
  final bool? dailyBackupImmutable;

  /// Indicates if the manual backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable,<span pulumi-lang-nodejs=" monthlyBackupImmutable " pulumi-lang-dotnet=" MonthlyBackupImmutable " pulumi-lang-go=" monthlyBackupImmutable " pulumi-lang-python=" monthly_backup_immutable " pulumi-lang-yaml=" monthlyBackupImmutable " pulumi-lang-java=" monthlyBackupImmutable "> monthly_backup_immutable </span>and<span pulumi-lang-nodejs=" manualBackupImmutable " pulumi-lang-dotnet=" ManualBackupImmutable " pulumi-lang-go=" manualBackupImmutable " pulumi-lang-python=" manual_backup_immutable " pulumi-lang-yaml=" manualBackupImmutable " pulumi-lang-java=" manualBackupImmutable "> manual_backup_immutable </span>must be true.
  final bool? manualBackupImmutable;

  /// Indicates if the monthly backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable,<span pulumi-lang-nodejs=" monthlyBackupImmutable " pulumi-lang-dotnet=" MonthlyBackupImmutable " pulumi-lang-go=" monthlyBackupImmutable " pulumi-lang-python=" monthly_backup_immutable " pulumi-lang-yaml=" monthlyBackupImmutable " pulumi-lang-java=" monthlyBackupImmutable "> monthly_backup_immutable </span>and<span pulumi-lang-nodejs=" manualBackupImmutable " pulumi-lang-dotnet=" ManualBackupImmutable " pulumi-lang-go=" manualBackupImmutable " pulumi-lang-python=" manual_backup_immutable " pulumi-lang-yaml=" manualBackupImmutable " pulumi-lang-java=" manualBackupImmutable "> manual_backup_immutable </span>must be true.
  final bool? monthlyBackupImmutable;

  /// Indicates if the weekly backups are immutable. At least one of daily_backup_immutable, weekly_backup_immutable,<span pulumi-lang-nodejs=" monthlyBackupImmutable " pulumi-lang-dotnet=" MonthlyBackupImmutable " pulumi-lang-go=" monthlyBackupImmutable " pulumi-lang-python=" monthly_backup_immutable " pulumi-lang-yaml=" monthlyBackupImmutable " pulumi-lang-java=" monthlyBackupImmutable "> monthly_backup_immutable </span>and<span pulumi-lang-nodejs=" manualBackupImmutable " pulumi-lang-dotnet=" ManualBackupImmutable " pulumi-lang-go=" manualBackupImmutable " pulumi-lang-python=" manual_backup_immutable " pulumi-lang-yaml=" manualBackupImmutable " pulumi-lang-java=" manualBackupImmutable "> manual_backup_immutable </span>must be true.
  final bool? weeklyBackupImmutable;

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
