// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAutoStopConfiguration {
  /// Enables the application to automatically stop after a certain amount of time being idle. Defaults to `true`.
  final bool? enabled;

  /// The amount of idle time in minutes after which your application will automatically stop. Defaults to `15` minutes.
  final int? idleTimeoutMinutes;

  /// Creates a new [ApplicationAutoStopConfiguration].
  /// [enabled] Enables the application to automatically stop after a certain amount of time being idle. Defaults to `true`.
  /// [idleTimeoutMinutes] The amount of idle time in minutes after which your application will automatically stop. Defaults to `15` minutes.
  ApplicationAutoStopConfiguration({
    this.enabled,
    this.idleTimeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final idleTimeoutMinutesValue = idleTimeoutMinutes;
    if (idleTimeoutMinutesValue != null) {
      map['idleTimeoutMinutes'] = idleTimeoutMinutesValue;
    }
    return map;
  }

  factory ApplicationAutoStopConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationAutoStopConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      idleTimeoutMinutes: map['idleTimeoutMinutes'] == null
          ? null
          : map['idleTimeoutMinutes'] as int,
    );
  }
}
