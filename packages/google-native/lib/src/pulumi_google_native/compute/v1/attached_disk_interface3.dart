/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
enum AttachedDiskInterface3 {
  nvme("NVME"),
  scsi("SCSI");

  const AttachedDiskInterface3(this.value);
  final String value;

  static AttachedDiskInterface3 fromValue(String value) {
    for (final item in AttachedDiskInterface3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInterface3 value: $value');
  }
}
