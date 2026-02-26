/// The disk type to use in the VM.
enum TargetVMDetailsDiskType {
  diskTypeUnspecified("DISK_TYPE_UNSPECIFIED"),
  standard("STANDARD"),
  balanced("BALANCED"),
  ssd("SSD");

  const TargetVMDetailsDiskType(this.value);
  final String value;

  static TargetVMDetailsDiskType fromValue(String value) {
    for (final item in TargetVMDetailsDiskType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetVMDetailsDiskType value: $value');
  }
}
