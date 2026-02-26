// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAutoStartConfiguration {
  /// Enables the application to automatically start on job submission. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? enabled;

  ApplicationAutoStartConfiguration({
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

  factory ApplicationAutoStartConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationAutoStartConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
