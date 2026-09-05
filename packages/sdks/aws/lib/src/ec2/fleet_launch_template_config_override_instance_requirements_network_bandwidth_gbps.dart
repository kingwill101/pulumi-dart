// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps {
  /// The maximum amount of network bandwidth, in Gbps. To specify no maximum limit, omit this parameter.
  final pulumi.Input<double?>? max;
  /// The minimum amount of network bandwidth, in Gbps. To specify no minimum limit, omit this parameter.
  final pulumi.Input<double?>? min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps].
  /// [max] The maximum amount of network bandwidth, in Gbps. To specify no maximum limit, omit this parameter.
  /// [min] The minimum amount of network bandwidth, in Gbps. To specify no minimum limit, omit this parameter.
  const FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
