/// [Deprecated] Storage type of the persistent disk.
enum DiskStorageType {
  hdd("HDD"),
  ssd("SSD");

  const DiskStorageType(this.value);
  final String value;

  static DiskStorageType fromValue(String value) {
    for (final item in DiskStorageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskStorageType value: $value');
  }
}
