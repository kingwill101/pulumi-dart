/// The mode in which to attach this disk. If not specified, the default is READ_WRITE mode. Only applicable to data_disks.
enum AttachedDiskMode4 {
  diskModeUnspecified("DISK_MODE_UNSPECIFIED"),
  readWrite("READ_WRITE"),
  readOnly("READ_ONLY");

  const AttachedDiskMode4(this.value);
  final String value;

  static AttachedDiskMode4 fromValue(String value) {
    for (final item in AttachedDiskMode4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskMode4 value: $value');
  }
}
