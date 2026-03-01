// ignore_for_file: unused_element, unnecessary_cast


class FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps {
  /// The maximum baseline bandwidth, in Mbps. To specify no maximum limit, omit this parameter..
  final int? max;
  /// The minimum baseline bandwidth, in Mbps. To specify no minimum limit, omit this parameter..
  final int? min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps].
  /// [max] The maximum baseline bandwidth, in Mbps. To specify no maximum limit, omit this parameter..
  /// [min] The minimum baseline bandwidth, in Mbps. To specify no minimum limit, omit this parameter..
  FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps.fromMap(Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsBaselineEbsBandwidthMbps(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

