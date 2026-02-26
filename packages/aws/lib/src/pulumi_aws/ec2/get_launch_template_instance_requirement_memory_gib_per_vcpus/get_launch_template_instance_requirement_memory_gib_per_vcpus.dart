// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus {
  final double max;
  final double min;

  GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementMemoryGibPerVcpus(
      max: map['max'] as double,
      min: map['min'] as double,
    );
  }
}
