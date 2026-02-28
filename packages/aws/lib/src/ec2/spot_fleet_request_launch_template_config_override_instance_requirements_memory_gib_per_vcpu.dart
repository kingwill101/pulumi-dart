// ignore_for_file: unused_element, unnecessary_cast

class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu {
  /// Maximum. May be a decimal number, e.g. `0.5`.
  final double? max;

  /// Minimum. May be a decimal number, e.g. `0.5`.
  final double? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu].
  /// [max] Maximum. May be a decimal number, e.g. `0.5`.
  /// [min] Minimum. May be a decimal number, e.g. `0.5`.
  SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu({
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

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu.fromMap(
      Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsMemoryGibPerVcpu(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
