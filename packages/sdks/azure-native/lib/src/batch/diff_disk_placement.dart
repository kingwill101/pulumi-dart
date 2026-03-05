/// This property can be used by user in the request to choose which location the operating system should be in. e.g., cache disk space for Ephemeral OS disk provisioning. For more information on Ephemeral OS disk size requirements, please refer to Ephemeral OS disk size requirements for Windows VMs at https://learn.microsoft.com/azure/virtual-machines/windows/ephemeral-os-disks#size-requirements and Linux VMs at https://learn.microsoft.com/azure/virtual-machines/linux/ephemeral-os-disks#size-requirements.
enum DiffDiskPlacement {
  cacheDisk("CacheDisk");

  const DiffDiskPlacement(this.wireValue);
  final String wireValue;

  static DiffDiskPlacement fromValue(String value) {
    for (final item in DiffDiskPlacement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiffDiskPlacement value: $value');
  }
}

