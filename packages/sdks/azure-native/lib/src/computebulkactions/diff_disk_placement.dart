/// Specifies the ephemeral disk placement for operating system disk. Possible values are: CacheDisk, ResourceDisk, NvmeDisk. The defaulting behavior is: CacheDisk if one is configured for the VM size otherwise ResourceDisk or NvmeDisk is used. Minimum api-version for NvmeDisk: 2024-03-01.
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
