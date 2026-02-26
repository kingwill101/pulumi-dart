/// The type of storage: `PD_SSD` (default) or `PD_HDD`.
enum CloudSqlSettingsDataDiskType2 {
  sqlDataDiskTypeUnspecified("SQL_DATA_DISK_TYPE_UNSPECIFIED"),
  pdSsd("PD_SSD"),
  pdHdd("PD_HDD");

  const CloudSqlSettingsDataDiskType2(this.value);
  final String value;

  static CloudSqlSettingsDataDiskType2 fromValue(String value) {
    for (final item in CloudSqlSettingsDataDiskType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CloudSqlSettingsDataDiskType2 value: $value');
  }
}
