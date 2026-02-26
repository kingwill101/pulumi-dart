// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceRequirementAcceleratorCount {
  final int max;
  final int min;

  GetLaunchTemplateInstanceRequirementAcceleratorCount({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetLaunchTemplateInstanceRequirementAcceleratorCount.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementAcceleratorCount(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
