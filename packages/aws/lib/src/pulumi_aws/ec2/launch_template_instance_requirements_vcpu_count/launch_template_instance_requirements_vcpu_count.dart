// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateInstanceRequirementsVcpuCount {
  /// Maximum.
  final int? max;

  /// Minimum.
  final int min;

  LaunchTemplateInstanceRequirementsVcpuCount({
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

  factory LaunchTemplateInstanceRequirementsVcpuCount.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateInstanceRequirementsVcpuCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] as int,
    );
  }
}
