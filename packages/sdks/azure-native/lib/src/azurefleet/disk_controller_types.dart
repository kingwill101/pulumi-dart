/// Specifies the disk controller type configured for the virtual machines in the scale set. Minimum api-version: 2022-08-01
enum DiskControllerTypes {
  sCSI("SCSI"),
  nVMe("NVMe");

  const DiskControllerTypes(this.value);
  final String value;

  static DiskControllerTypes fromValue(String value) {
    for (final item in DiskControllerTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskControllerTypes value: $value');
  }
}

