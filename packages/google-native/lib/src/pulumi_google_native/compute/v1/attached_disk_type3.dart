/// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
enum AttachedDiskType3 {
  persistent("PERSISTENT"),
  scratch("SCRATCH");

  const AttachedDiskType3(this.value);
  final String value;

  static AttachedDiskType3 fromValue(String value) {
    for (final item in AttachedDiskType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskType3 value: $value');
  }
}
