/// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
enum RegionDiskInterface {
  nvme("NVME"),
  scsi("SCSI"),
  unspecified("UNSPECIFIED");

  const RegionDiskInterface(this.value);
  final String value;

  static RegionDiskInterface fromValue(String value) {
    for (final item in RegionDiskInterface.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionDiskInterface value: $value');
  }
}
