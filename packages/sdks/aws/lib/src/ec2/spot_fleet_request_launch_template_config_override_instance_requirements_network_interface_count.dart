// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount {
  /// Maximum.
  final pulumi.Input<int>? max;
  /// Minimum.
  final pulumi.Input<int>? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount].
  /// [max] Maximum.
  /// [min] Minimum.
  SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkInterfaceCount(
      max: map['max'] == null ? null : ((map['max'] as int).input()).input(),
      min: map['min'] == null ? null : ((map['min'] as int).input()).input(),
    );
  }
}

