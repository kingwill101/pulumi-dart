// ignore_for_file: unused_element, unnecessary_cast


class SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb {
  /// Maximum. May be a decimal number, e.g. `0.5`.
  final double? max;
  /// Minimum. May be a decimal number, e.g. `0.5`.
  final double? min;

  /// Creates a new [SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb].
  /// [max] Maximum. May be a decimal number, e.g. `0.5`.
  /// [min] Minimum. May be a decimal number, e.g. `0.5`.
  SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb.fromMap(Map<String, dynamic> map) {
    return SpotFleetRequestLaunchTemplateConfigOverrideInstanceRequirementsTotalLocalStorageGb(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}

