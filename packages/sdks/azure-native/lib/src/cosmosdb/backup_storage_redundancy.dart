/// Enum to indicate type of backup residency
enum BackupStorageRedundancy {
  valueGeo("Geo"),
  valueLocal("Local"),
  valueZone("Zone");

  const BackupStorageRedundancy(this.wireValue);
  final String wireValue;

  static BackupStorageRedundancy fromValue(String value) {
    for (final item in BackupStorageRedundancy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupStorageRedundancy value: $value');
  }
}
