/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. For most machine types, the default is SCSI. Local SSDs can use either NVME or SCSI. In certain configurations, persistent disks can use NVMe. For more information, see About persistent disks.
enum AttachedDiskInterfaceComputeBeta {
  nvme("NVME"),
  scsi("SCSI");

  const AttachedDiskInterfaceComputeBeta(this.value);
  final String value;

  static AttachedDiskInterfaceComputeBeta fromValue(String value) {
    for (final item in AttachedDiskInterfaceComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AttachedDiskInterfaceComputeBeta value: $value',
    );
  }
}
