/// The type of storage: `PD_SSD` (default) or `PD_HDD`.
enum CloudSqlSettingsDataDiskTypeDatamigrationV1beta1 {
  sqlDataDiskTypeUnspecified("SQL_DATA_DISK_TYPE_UNSPECIFIED"),
  pdSsd("PD_SSD"),
  pdHdd("PD_HDD");

  const CloudSqlSettingsDataDiskTypeDatamigrationV1beta1(this.value);
  final String value;

  static CloudSqlSettingsDataDiskTypeDatamigrationV1beta1 fromValue(
      String value) {
    for (final item
        in CloudSqlSettingsDataDiskTypeDatamigrationV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown CloudSqlSettingsDataDiskTypeDatamigrationV1beta1 value: $value');
  }
}
