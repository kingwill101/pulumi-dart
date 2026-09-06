import 'package:pulumi/pulumi.dart' as pulumi;

/// GPU assignment type
enum GpuAssignmentTypeEnum implements pulumi.PulumiEnum<String> {
  gpuDDA("GpuDDA"),
  gpuP("GpuP");

  const GpuAssignmentTypeEnum(this.wireValue);
  @override
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
