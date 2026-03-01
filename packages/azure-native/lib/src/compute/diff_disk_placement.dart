/// Specifies the ephemeral disk placement for operating system disk. Possible values are: **CacheDisk,** **ResourceDisk,** **NvmeDisk.** The defaulting behavior is: **CacheDisk** if one is configured for the VM size otherwise **ResourceDisk** or **NvmeDisk** is used. Refer to the VM size documentation for Windows VM at https://docs.microsoft.com/azure/virtual-machines/windows/sizes and Linux VM at https://docs.microsoft.com/azure/virtual-machines/linux/sizes to check which VM sizes exposes a cache disk. Minimum api-version for NvmeDisk: 2024-03-01.
enum DiffDiskPlacement {
  cacheDisk("CacheDisk"),
  resourceDisk("ResourceDisk"),
  nvmeDisk("NvmeDisk");

  const DiffDiskPlacement(this.value);
  final String value;

  static DiffDiskPlacement fromValue(String value) {
    for (final item in DiffDiskPlacement.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiffDiskPlacement value: $value');
  }
}

