/// GPU assignment type
enum GpuAssignmentTypeEnum {
  gpuDDA("GpuDDA"),
  gpuP("GpuP");

  const GpuAssignmentTypeEnum(this.wireValue);
  final String wireValue;

  static GpuAssignmentTypeEnum fromValue(String value) {
    for (final item in GpuAssignmentTypeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GpuAssignmentTypeEnum value: $value');
  }
}
