/// [Deprecated] Storage type of the persistent disk.
enum DiskStorageType2 {
  hdd("HDD"),
  ssd("SSD");

  const DiskStorageType2(this.value);
  final String value;

  static DiskStorageType2 fromValue(String value) {
    for (final item in DiskStorageType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskStorageType2 value: $value');
  }
}
