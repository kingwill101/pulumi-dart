// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceRequirementAcceleratorCount {
  final int max;
  final int min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementAcceleratorCount].
  /// [max] Required.
  /// [min] Required.
  GetLaunchTemplateInstanceRequirementAcceleratorCount({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': max, 'min': min};
  }

  factory GetLaunchTemplateInstanceRequirementAcceleratorCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLaunchTemplateInstanceRequirementAcceleratorCount(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
