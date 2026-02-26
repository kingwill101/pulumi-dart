// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAutoStopConfiguration {
  /// Enables the application to automatically stop after a certain amount of time being idle. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? enabled;

  /// The amount of idle time in minutes after which your application will automatically stop. Defaults to <span pulumi-lang-nodejs="`15`" pulumi-lang-dotnet="`15`" pulumi-lang-go="`15`" pulumi-lang-python="`15`" pulumi-lang-yaml="`15`" pulumi-lang-java="`15`">`15`</span> minutes.
  final int? idleTimeoutMinutes;

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
