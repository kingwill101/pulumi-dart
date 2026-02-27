/// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
enum AttachedDiskTypeComputeBeta {
  persistent("PERSISTENT"),
  scratch("SCRATCH");

  const AttachedDiskTypeComputeBeta(this.value);
  final String value;

  static AttachedDiskTypeComputeBeta fromValue(String value) {
    for (final item in AttachedDiskTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskTypeComputeBeta value: $value');
  }
}
