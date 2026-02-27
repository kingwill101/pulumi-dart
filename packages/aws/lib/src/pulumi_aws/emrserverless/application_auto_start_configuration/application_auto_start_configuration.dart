// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAutoStartConfiguration {
  /// Enables the application to automatically start on job submission. Defaults to `true`.
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
