/// Different kind of Local storage disk types supported by Azure VMs.
enum LocalStorageDiskType {
  hDD("HDD"),
  sSD("SSD");

  const LocalStorageDiskType(this.wireValue);
  final String wireValue;

  static LocalStorageDiskType fromValue(String value) {
    for (final item in LocalStorageDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalStorageDiskType value: $value');
  }
}
