// ignore_for_file: unused_element, unnecessary_cast


class LaunchTemplateInstanceRequirementsVcpuCount {
  /// Maximum.
  final int? max;
  /// Minimum.
  final int min;

  /// Creates a new [LaunchTemplateInstanceRequirementsVcpuCount].
  /// [max] Maximum.
  /// [min] Minimum.
  LaunchTemplateInstanceRequirementsVcpuCount({
    this.max,
    required this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': min,
    };
  }

  factory LaunchTemplateInstanceRequirementsVcpuCount.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateInstanceRequirementsVcpuCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] as int,
    );
  }
}

