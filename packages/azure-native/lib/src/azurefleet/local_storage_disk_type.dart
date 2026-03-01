/// Different kind of Local storage disk types supported by Azure VMs.
enum LocalStorageDiskType {
  hDD("HDD"),
  sSD("SSD");

  const LocalStorageDiskType(this.value);
  final String value;

  static LocalStorageDiskType fromValue(String value) {
    for (final item in LocalStorageDiskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalStorageDiskType value: $value');
  }
}

