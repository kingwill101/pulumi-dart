/// The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
enum SettingsDataDiskType2 {
  sqlDataDiskTypeUnspecified("SQL_DATA_DISK_TYPE_UNSPECIFIED"),
  pdSsd("PD_SSD"),
  pdHdd("PD_HDD"),
  obsoleteLocalSsd("OBSOLETE_LOCAL_SSD");

  const SettingsDataDiskType2(this.value);
  final String value;

  static SettingsDataDiskType2 fromValue(String value) {
    for (final item in SettingsDataDiskType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingsDataDiskType2 value: $value');
  }
}
