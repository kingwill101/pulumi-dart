/// The disk type to use in the VM.
enum ComputeEngineTargetDefaultsDiskType2 {
  computeEngineDiskTypeUnspecified("COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED"),
  computeEngineDiskTypeStandard("COMPUTE_ENGINE_DISK_TYPE_STANDARD"),
  computeEngineDiskTypeSsd("COMPUTE_ENGINE_DISK_TYPE_SSD"),
  computeEngineDiskTypeBalanced("COMPUTE_ENGINE_DISK_TYPE_BALANCED");

  const ComputeEngineTargetDefaultsDiskType2(this.value);
  final String value;

  static ComputeEngineTargetDefaultsDiskType2 fromValue(String value) {
    for (final item in ComputeEngineTargetDefaultsDiskType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ComputeEngineTargetDefaultsDiskType2 value: $value');
  }
}
