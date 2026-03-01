/// The unit that 'retained_backups' represents.
enum BackupRetentionSettingsRetentionUnitSqladminV1beta4 {
  retentionUnitUnspecified("RETENTION_UNIT_UNSPECIFIED"),
  count("COUNT");

  const BackupRetentionSettingsRetentionUnitSqladminV1beta4(this.value);
  final String value;

  static BackupRetentionSettingsRetentionUnitSqladminV1beta4 fromValue(
    String value,
  ) {
    for (final item
        in BackupRetentionSettingsRetentionUnitSqladminV1beta4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown BackupRetentionSettingsRetentionUnitSqladminV1beta4 value: $value',
    );
  }
}
