// ignore_for_file: unused_element, unnecessary_cast

class FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps {
  /// The maximum amount of network bandwidth, in Gbps. To specify no maximum limit, omit this parameter.
  final double? max;

  /// The minimum amount of network bandwidth, in Gbps. To specify no minimum limit, omit this parameter.
  final double? min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps].
  /// [max] The maximum amount of network bandwidth, in Gbps. To specify no maximum limit, omit this parameter.
  /// [min] The minimum amount of network bandwidth, in Gbps. To specify no minimum limit, omit this parameter.
  FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue;
    }
    final minValue = min;
    if (minValue != null) {
      map['min'] = minValue;
    }
    return map;
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps.fromMap(
      Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
