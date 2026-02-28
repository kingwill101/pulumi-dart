// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib {
  final int max;
  final int min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib].
  /// [max] Required.
  /// [min] Required.
  GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementAcceleratorTotalMemoryMib(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
