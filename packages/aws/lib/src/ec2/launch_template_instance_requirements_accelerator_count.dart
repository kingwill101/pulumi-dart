// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateInstanceRequirementsAcceleratorCount {
  /// Maximum. Set to `0` to exclude instance types with accelerators.
  final int? max;

  /// Minimum.
  final int? min;

  /// Creates a new [LaunchTemplateInstanceRequirementsAcceleratorCount].
  /// [max] Maximum. Set to `0` to exclude instance types with accelerators.
  /// [min] Minimum.
  LaunchTemplateInstanceRequirementsAcceleratorCount({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory LaunchTemplateInstanceRequirementsAcceleratorCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchTemplateInstanceRequirementsAcceleratorCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
