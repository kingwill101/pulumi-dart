// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceRequirementVcpuCount {
  final int max;
  final int min;

  GetLaunchTemplateInstanceRequirementVcpuCount({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetLaunchTemplateInstanceRequirementVcpuCount.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementVcpuCount(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
