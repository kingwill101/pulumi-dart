// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateInstanceRequirementsNetworkBandwidthGbps {
  /// Maximum.
  final double? max;

  /// Minimum.
  final double? min;

  /// Creates a new [LaunchTemplateInstanceRequirementsNetworkBandwidthGbps].
  /// [max] Maximum.
  /// [min] Minimum.
  LaunchTemplateInstanceRequirementsNetworkBandwidthGbps({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory LaunchTemplateInstanceRequirementsNetworkBandwidthGbps.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchTemplateInstanceRequirementsNetworkBandwidthGbps(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
