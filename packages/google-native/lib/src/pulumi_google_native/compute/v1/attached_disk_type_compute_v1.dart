/// Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified, the default is PERSISTENT.
enum AttachedDiskTypeComputeV1 {
  persistent("PERSISTENT"),
  scratch("SCRATCH");

  const AttachedDiskTypeComputeV1(this.value);
  final String value;

  static AttachedDiskTypeComputeV1 fromValue(String value) {
    for (final item in AttachedDiskTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskTypeComputeV1 value: $value');
  }
}
