// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsFinalBackupConfig {
  /// True if enabled final backup.
  final bool? enabled;

  /// The number of days we retain the final backup after instance deletion. The valid range is between 1 and 365. For instances managed by BackupDR, the valid range is between 1 day and 99 years.
  final int? retentionDays;

  DatabaseInstanceSettingsFinalBackupConfig({
    this.enabled,
    this.retentionDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final retentionDaysValue = retentionDays;
    if (retentionDaysValue != null) {
      map['retentionDays'] = retentionDaysValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsFinalBackupConfig.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsFinalBackupConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      retentionDays:
          map['retentionDays'] == null ? null : map['retentionDays'] as int,
    );
  }
}
