/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
enum AttachedDiskInterface {
  nvdimm("NVDIMM"),
  nvme("NVME"),
  scsi("SCSI");

  const AttachedDiskInterface(this.value);
  final String value;

  static AttachedDiskInterface fromValue(String value) {
    for (final item in AttachedDiskInterface.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AttachedDiskInterface value: $value');
  }
}

