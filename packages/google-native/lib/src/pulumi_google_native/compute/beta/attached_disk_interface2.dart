/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
enum AttachedDiskInterface2 {
  nvme("NVME"),
  scsi("SCSI");

  const AttachedDiskInterface2(this.value);
  final String value;

  static AttachedDiskInterface2 fromValue(String value) {
    for (final item in AttachedDiskInterface2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInterface2 value: $value');
  }
}
