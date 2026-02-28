// ignore_for_file: unused_element, unnecessary_cast

class FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount {
  /// Maximum. Set to `0` to exclude instance types with accelerators.
  final int? max;

  /// Minimum.
  final int? min;

  /// Creates a new [FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount].
  /// [max] Maximum. Set to `0` to exclude instance types with accelerators.
  /// [min] Minimum.
  FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount({
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

  factory FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount.fromMap(
      Map<String, dynamic> map) {
    return FleetLaunchTemplateConfigOverrideInstanceRequirementsAcceleratorCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
