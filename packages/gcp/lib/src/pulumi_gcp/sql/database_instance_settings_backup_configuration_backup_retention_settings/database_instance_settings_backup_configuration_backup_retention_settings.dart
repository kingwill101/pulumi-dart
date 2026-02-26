// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings {
  /// Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If<span pulumi-lang-nodejs=" retentionUnit
  /// " pulumi-lang-dotnet=" RetentionUnit
  /// " pulumi-lang-go=" retentionUnit
  /// " pulumi-lang-python=" retention_unit
  /// " pulumi-lang-yaml=" retentionUnit
  /// " pulumi-lang-java=" retentionUnit
  /// "> retention_unit
  /// </span>is 'COUNT', we will retain this many backups.
  final int retainedBackups;

  /// The unit that 'retained_backups' represents. Defaults to `COUNT`.
  final String? retentionUnit;

  DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings({
    required this.retainedBackups,
    this.retentionUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retainedBackups'] = retainedBackups;
    final retentionUnitValue = retentionUnit;
    if (retentionUnitValue != null) {
      map['retentionUnit'] = retentionUnitValue;
    }
    return map;
  }

  factory DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings.fromMap(
      Map<String, dynamic> map) {
    return DatabaseInstanceSettingsBackupConfigurationBackupRetentionSettings(
      retainedBackups: map['retainedBackups'] as int,
      retentionUnit:
          map['retentionUnit'] == null ? null : map['retentionUnit'] as String,
    );
  }
}
