/// Specifies the ephemeral disk placement for operating system disk. Possible
/// values are: **CacheDisk,** **ResourceDisk.** The defaulting behavior is:
/// **CacheDisk** if one is configured for the VM size otherwise **ResourceDisk**
/// is used. Refer to the VM size documentation for Windows VM at
/// https://learn.microsoft.com/azure/virtual-machines/windows/sizes and Linux VM at
/// https://learn.microsoft.com/azure/virtual-machines/linux/sizes to check which VM
/// sizes exposes a cache disk.
enum DiffDiskPlacement {
  cacheDisk("CacheDisk"),
  resourceDisk("ResourceDisk"),
  nvmeDisk("NvmeDisk");

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
