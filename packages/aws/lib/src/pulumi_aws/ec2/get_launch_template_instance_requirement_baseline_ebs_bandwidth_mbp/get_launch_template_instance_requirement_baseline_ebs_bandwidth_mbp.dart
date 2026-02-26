// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp {
  final int max;
  final int min;

  GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['max'] = max;
    map['min'] = min;
    return map;
  }

  factory GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp.fromMap(
      Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
