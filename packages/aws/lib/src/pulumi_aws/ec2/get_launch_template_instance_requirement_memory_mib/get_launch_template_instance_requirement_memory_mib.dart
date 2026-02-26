// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceRequirementMemoryMib {
  final int max;
  final int min;

  GetLaunchTemplateInstanceRequirementMemoryMib({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetLaunchTemplateInstanceRequirementMemoryMib.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementMemoryMib(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
