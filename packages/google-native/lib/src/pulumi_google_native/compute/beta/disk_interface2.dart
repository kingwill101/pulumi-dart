/// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
enum DiskInterface2 {
  nvme("NVME"),
  scsi("SCSI"),
  unspecified("UNSPECIFIED");

  const DiskInterface2(this.value);
  final String value;

  static DiskInterface2 fromValue(String value) {
    for (final item in DiskInterface2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskInterface2 value: $value');
  }
}
