/// [Deprecated] Storage type of the persistent disk.
enum DiskStorageTypeComputeBeta {
  hdd("HDD"),
  ssd("SSD");

  const DiskStorageTypeComputeBeta(this.value);
  final String value;

  static DiskStorageTypeComputeBeta fromValue(String value) {
    for (final item in DiskStorageTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskStorageTypeComputeBeta value: $value');
  }
}
