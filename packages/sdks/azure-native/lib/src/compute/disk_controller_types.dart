/// Specifies the disk controller type configured for the VM. **Note:** This property will be set to the default disk controller type if not specified provided virtual machine is being created with 'hyperVGeneration' set to V2 based on the capabilities of the operating system disk and VM size from the the specified minimum api version. You need to deallocate the VM before updating its disk controller type unless you are updating the VM size in the VM configuration which implicitly deallocates and reallocates the VM. Minimum api-version: 2022-08-01.
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

