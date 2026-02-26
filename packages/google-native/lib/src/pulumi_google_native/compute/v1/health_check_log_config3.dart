// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of logging on a health check. If logging is enabled, logs will be exported to Stackdriver.
class HealthCheckLogConfig3 {
  /// Indicates whether or not to export logs. This is false by default, which means no health check logging will be done.
  final bool? enable;

  HealthCheckLogConfig3({
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

  factory HealthCheckLogConfig3.fromMap(Map<String, dynamic> map) {
    return HealthCheckLogConfig3(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}
