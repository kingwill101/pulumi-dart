// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateInstanceRequirementsNetworkInterfaceCount {
  /// Maximum.
  final int? max;

  /// Minimum.
  final int? min;

  LaunchTemplateInstanceRequirementsNetworkInterfaceCount({
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

  factory LaunchTemplateInstanceRequirementsNetworkInterfaceCount.fromMap(
      Map<String, dynamic> map) {
    return LaunchTemplateInstanceRequirementsNetworkInterfaceCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
