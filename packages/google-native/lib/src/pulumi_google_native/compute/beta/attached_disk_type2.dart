/// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
enum AttachedDiskType2 {
  persistent("PERSISTENT"),
  scratch("SCRATCH");

  const AttachedDiskType2(this.value);
  final String value;

  static AttachedDiskType2 fromValue(String value) {
    for (final item in AttachedDiskType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskType2 value: $value');
  }
}
