/// [Deprecated] Storage type of the persistent disk.
enum RegionDiskStorageType2 {
  hdd("HDD"),
  ssd("SSD");

  const RegionDiskStorageType2(this.value);
  final String value;

  static RegionDiskStorageType2 fromValue(String value) {
    for (final item in RegionDiskStorageType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskStorageType2 value: $value');
  }
}
