/// GPU assignment type
enum GpuAssignmentTypeEnum {
  gpuDDA("GpuDDA"),
  gpuP("GpuP");

  const GpuAssignmentTypeEnum(this.value);
  final String value;

  static GpuAssignmentTypeEnum fromValue(String value) {
    for (final item in GpuAssignmentTypeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GpuAssignmentTypeEnum value: $value');
  }
}

