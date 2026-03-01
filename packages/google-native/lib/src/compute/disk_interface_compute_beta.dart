/// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
enum DiskInterfaceComputeBeta {
  nvme("NVME"),
  scsi("SCSI"),
  unspecified("UNSPECIFIED");

  const DiskInterfaceComputeBeta(this.value);
  final String value;

  static DiskInterfaceComputeBeta fromValue(String value) {
    for (final item in DiskInterfaceComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskInterfaceComputeBeta value: $value');
  }
}
