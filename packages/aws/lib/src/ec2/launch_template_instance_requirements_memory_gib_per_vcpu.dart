// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateInstanceRequirementsMemoryGibPerVcpu {
  /// Maximum. May be a decimal number, e.g. `0.5`.
  final double? max;

  /// Minimum. May be a decimal number, e.g. `0.5`.
  final double? min;

  /// Creates a new [LaunchTemplateInstanceRequirementsMemoryGibPerVcpu].
  /// [max] Maximum. May be a decimal number, e.g. `0.5`.
  /// [min] Minimum. May be a decimal number, e.g. `0.5`.
  LaunchTemplateInstanceRequirementsMemoryGibPerVcpu({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory LaunchTemplateInstanceRequirementsMemoryGibPerVcpu.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchTemplateInstanceRequirementsMemoryGibPerVcpu(
      max: map['max'] == null ? null : map['max'] as double,
      min: map['min'] == null ? null : map['min'] as double,
    );
  }
}
