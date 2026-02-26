/// Optional. The type of disk provisioning to use for the VM.
enum BootDiskDefaultsDiskType2 {
  computeEngineDiskTypeUnspecified("COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED"),
  computeEngineDiskTypeStandard("COMPUTE_ENGINE_DISK_TYPE_STANDARD"),
  computeEngineDiskTypeSsd("COMPUTE_ENGINE_DISK_TYPE_SSD"),
  computeEngineDiskTypeBalanced("COMPUTE_ENGINE_DISK_TYPE_BALANCED");

  const BootDiskDefaultsDiskType2(this.value);
  final String value;

  static BootDiskDefaultsDiskType2 fromValue(String value) {
    for (final item in BootDiskDefaultsDiskType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BootDiskDefaultsDiskType2 value: $value');
  }
}
