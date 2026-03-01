// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib {
  /// Maximum.
  final int? max;

  /// Minimum.
  final int? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib].
  /// [max] Maximum.
  /// [min] Minimum.
  SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryMib(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
