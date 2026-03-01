// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateInstanceRequirementsMemoryMib {
  /// Maximum.
  final int? max;

  /// Minimum.
  final int min;

  /// Creates a new [LaunchTemplateInstanceRequirementsMemoryMib].
  /// [max] Maximum.
  /// [min] Minimum.
  LaunchTemplateInstanceRequirementsMemoryMib({this.max, required this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': min};
  }

  factory LaunchTemplateInstanceRequirementsMemoryMib.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchTemplateInstanceRequirementsMemoryMib(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] as int,
    );
  }
}
