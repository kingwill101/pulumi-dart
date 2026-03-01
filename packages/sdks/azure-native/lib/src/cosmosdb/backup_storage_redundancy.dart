/// Enum to indicate type of backup residency
enum BackupStorageRedundancy {
  valueGeo("Geo"),
  valueLocal("Local"),
  valueZone("Zone");

  const BackupStorageRedundancy(this.value);
  final String value;

  static BackupStorageRedundancy fromValue(String value) {
    for (final item in BackupStorageRedundancy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupStorageRedundancy value: $value');
  }
}

