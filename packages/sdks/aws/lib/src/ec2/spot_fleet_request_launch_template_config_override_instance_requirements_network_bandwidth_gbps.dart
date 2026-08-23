// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps {
  /// Maximum.
  final pulumi.Input<double>? max;
  /// Minimum.
  final pulumi.Input<double>? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps].
  /// [max] Maximum.
  /// [min] Minimum.
  const SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
