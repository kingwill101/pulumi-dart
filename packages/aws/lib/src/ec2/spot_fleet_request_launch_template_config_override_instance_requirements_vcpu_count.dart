// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount {
  /// Maximum.
  final int? max;

  /// Minimum.
  final int? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount].
  /// [max] Maximum.
  /// [min] Minimum.
  SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsVcpuCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
