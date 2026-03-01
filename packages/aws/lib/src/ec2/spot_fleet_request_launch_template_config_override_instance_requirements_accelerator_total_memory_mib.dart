// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib {
  /// Maximum.
  final int? max;

  /// Minimum.
  final int? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib].
  /// [max] Maximum.
  /// [min] Minimum.
  SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorTotalMemoryMib(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
