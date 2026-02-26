/// The unit that 'retained_backups' represents.
enum BackupRetentionSettingsRetentionUnit2 {
  retentionUnitUnspecified("RETENTION_UNIT_UNSPECIFIED"),
  count("COUNT");

  const BackupRetentionSettingsRetentionUnit2(this.value);
  final String value;

  static BackupRetentionSettingsRetentionUnit2 fromValue(String value) {
    for (final item in BackupRetentionSettingsRetentionUnit2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BackupRetentionSettingsRetentionUnit2 value: $value');
  }
}
