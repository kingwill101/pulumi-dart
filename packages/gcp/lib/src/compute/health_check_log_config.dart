// ignore_for_file: unused_element, unnecessary_cast

class HealthCheckLogConfig {
  /// Indicates whether or not to export logs. This is false by default,
  /// which means no health check logging will be done.
  final bool? enable;

  /// Creates a new [HealthCheckLogConfig].
  /// [enable] Indicates whether or not to export logs. This is false by default,
  HealthCheckLogConfig({
    this.enable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    return map;
  }

  factory HealthCheckLogConfig.fromMap(Map<String, dynamic> map) {
    return HealthCheckLogConfig(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}
