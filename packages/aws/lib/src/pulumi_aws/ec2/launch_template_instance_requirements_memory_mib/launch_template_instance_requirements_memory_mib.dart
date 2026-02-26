// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateInstanceRequirementsMemoryMib {
  /// Maximum.
  final int? max;

  /// Minimum.
  final int min;

  LaunchTemplateInstanceRequirementsMemoryMib({
    this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue;
    }
    map['min'] = min;
    return map;
  }

  factory LaunchTemplateInstanceRequirementsMemoryMib.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateInstanceRequirementsMemoryMib(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] as int,
    );
  }
}
