// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp {
  /// Maximum.
  final pulumi.Input<double> max;

  /// Minimum.
  final pulumi.Input<double> min;

  /// Creates a new [GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp].
  /// [max] Maximum.
  /// [min] Minimum.
  GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': max, 'min': min};
  }

  factory GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGroupMixedInstancesPolicyLaunchTemplateOverrideInstanceRequirementNetworkBandwidthGbp(
      max: pulumi.Input.fromValue(map['max'] as double),
      min: pulumi.Input.fromValue(map['min'] as double),
    );
  }
}
