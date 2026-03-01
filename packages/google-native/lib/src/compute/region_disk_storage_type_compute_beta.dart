/// [Deprecated] Storage type of the persistent disk.
enum RegionDiskStorageTypeComputeBeta {
  hdd("HDD"),
  ssd("SSD");

  const RegionDiskStorageTypeComputeBeta(this.value);
  final String value;

  static RegionDiskStorageTypeComputeBeta fromValue(String value) {
    for (final item in RegionDiskStorageTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionDiskStorageTypeComputeBeta value: $value',
    );
  }
}
