// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateInstanceRequirementsNetworkInterfaceCount {
  /// Maximum.
  final int? max;

  /// Minimum.
  final int? min;

  /// Creates a new [LaunchTemplateInstanceRequirementsNetworkInterfaceCount].
  /// [max] Maximum.
  /// [min] Minimum.
  LaunchTemplateInstanceRequirementsNetworkInterfaceCount({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory LaunchTemplateInstanceRequirementsNetworkInterfaceCount.fromMap(
    Map<String, dynamic> map,
  ) {
    return LaunchTemplateInstanceRequirementsNetworkInterfaceCount(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}
