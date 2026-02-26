/// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
enum RegionDiskInterface2 {
  nvme("NVME"),
  scsi("SCSI"),
  unspecified("UNSPECIFIED");

  const RegionDiskInterface2(this.value);
  final String value;

  static RegionDiskInterface2 fromValue(String value) {
    for (final item in RegionDiskInterface2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskInterface2 value: $value');
  }
}
