// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp {
  final pulumi.Input<double> max;
  final pulumi.Input<double> min;

  /// Creates a new [GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp].
  /// [max] Required.
  /// [min] Required.
  GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp({
    required this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
    };
  }

  factory GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp.fromMap(Map<String, dynamic> map) {
    return GetLaunchTemplateInstanceRequirementNetworkBandwidthGbp(
      max: (map['max'] as double).input(),
      min: (map['min'] as double).input(),
    );
  }
}

