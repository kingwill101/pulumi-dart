// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp {
  final pulumi.Input<int> max;
  final pulumi.Input<int> min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp].
  /// [max] Required.
  /// [min] Required.
  GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementBaselineEbsBandwidthMbp(
      max: (map['max'] as int).input(),
      min: (map['min'] as int).input(),
    );
  }
}

