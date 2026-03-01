/// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
enum AttachedDiskInitializeParamsInterface {
  nvme("NVME"),
  scsi("SCSI"),
  unspecified("UNSPECIFIED");

  const AttachedDiskInitializeParamsInterface(this.value);
  final String value;

  static AttachedDiskInitializeParamsInterface fromValue(String value) {
    for (final item in AttachedDiskInitializeParamsInterface.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AttachedDiskInitializeParamsInterface value: $value',
    );
  }
}
