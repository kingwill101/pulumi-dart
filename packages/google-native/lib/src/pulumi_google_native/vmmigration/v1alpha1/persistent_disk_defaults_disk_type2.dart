/// The disk type to use.
enum PersistentDiskDefaultsDiskType2 {
  computeEngineDiskTypeUnspecified("COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED"),
  computeEngineDiskTypeStandard("COMPUTE_ENGINE_DISK_TYPE_STANDARD"),
  computeEngineDiskTypeSsd("COMPUTE_ENGINE_DISK_TYPE_SSD"),
  computeEngineDiskTypeBalanced("COMPUTE_ENGINE_DISK_TYPE_BALANCED");

  const PersistentDiskDefaultsDiskType2(this.value);
  final String value;

  static PersistentDiskDefaultsDiskType2 fromValue(String value) {
    for (final item in PersistentDiskDefaultsDiskType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PersistentDiskDefaultsDiskType2 value: $value');
  }
}
