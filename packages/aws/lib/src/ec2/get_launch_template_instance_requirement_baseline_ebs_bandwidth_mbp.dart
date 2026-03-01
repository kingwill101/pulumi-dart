// ignore_for_file: unused_element, unnecessary_cast

class GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp {
  final int max;
  final int min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp].
  /// [max] Required.
  /// [min] Required.
  GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': max, 'min': min};
  }

  factory GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp(
      max: map['max'] as int,
      min: map['min'] as int,
    );
  }
}
