// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateMonitoring {
  /// If `true`, the launched EC2 instance will have detailed monitoring enabled.
  final bool? enabled;

  LaunchTemplateMonitoring({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory LaunchTemplateMonitoring.fromMap(Map<String, dynamic> map) {
    return LaunchTemplateMonitoring(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
