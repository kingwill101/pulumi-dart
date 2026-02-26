// ignore_for_file: unused_element, unnecessary_cast

class LaunchTemplateMonitoring {
  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the launched EC2 instance will have detailed monitoring enabled.
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
