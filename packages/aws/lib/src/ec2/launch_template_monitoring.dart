// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateMonitoring {
  /// If `true`, the launched EC2 instance will have detailed monitoring enabled.
  final bool? enabled;

  /// Creates a new [LaunchTemplateMonitoring].
  /// [enabled] If `true`, the launched EC2 instance will have detailed monitoring enabled.
  LaunchTemplateMonitoring({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory LaunchTemplateMonitoring.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateMonitoring(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
