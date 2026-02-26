/// The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
enum AttachedDiskMode2 {
  readOnly("READ_ONLY"),
  readWrite("READ_WRITE");

  const AttachedDiskMode2(this.value);
  final String value;

  static AttachedDiskMode2 fromValue(String value) {
    for (final item in AttachedDiskMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskMode2 value: $value');
  }
}
