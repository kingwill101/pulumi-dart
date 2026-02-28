// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps {
  /// Maximum.
  final double? max;

  /// Minimum.
  final double? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps].
  /// [max] Maximum.
  /// [min] Minimum.
  SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps({
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

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps.fromMap(
      Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsNetworkBandwidthGbps(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
