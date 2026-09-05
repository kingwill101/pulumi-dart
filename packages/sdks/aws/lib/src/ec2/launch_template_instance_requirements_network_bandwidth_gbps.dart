// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchTemplateInstanceRequirementsNetworkBandwidthGbps {
  /// Maximum.
  final pulumi.Input<double?>? max;
  /// Minimum.
  final pulumi.Input<double?>? min;

  /// Creates a new [LaunchTemplateInstanceRequirementsNetworkBandwidthGbps].
  /// [max] Maximum.
  /// [min] Minimum.
  const LaunchTemplateInstanceRequirementsNetworkBandwidthGbps({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory LaunchTemplateInstanceRequirementsNetworkBandwidthGbps.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateInstanceRequirementsNetworkBandwidthGbps(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
