/// Immutable. The storage type of the underlying volume.
enum NfsShareStorageType {
  storageTypeUnspecified("STORAGE_TYPE_UNSPECIFIED"),
  ssd("SSD"),
  hdd("HDD");

  const NfsShareStorageType(this.value);
  final String value;

  static NfsShareStorageType fromValue(String value) {
    for (final item in NfsShareStorageType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NfsShareStorageType value: $value');
  }
}
