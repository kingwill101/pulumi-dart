/// The disk type to use in the VM.
enum ComputeEngineTargetDefaultsDiskType {
  computeEngineDiskTypeUnspecified("COMPUTE_ENGINE_DISK_TYPE_UNSPECIFIED"),
  computeEngineDiskTypeStandard("COMPUTE_ENGINE_DISK_TYPE_STANDARD"),
  computeEngineDiskTypeSsd("COMPUTE_ENGINE_DISK_TYPE_SSD"),
  computeEngineDiskTypeBalanced("COMPUTE_ENGINE_DISK_TYPE_BALANCED");

  const ComputeEngineTargetDefaultsDiskType(this.value);
  final String value;

  static ComputeEngineTargetDefaultsDiskType fromValue(String value) {
    for (final item in ComputeEngineTargetDefaultsDiskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ComputeEngineTargetDefaultsDiskType value: $value');
  }
}
