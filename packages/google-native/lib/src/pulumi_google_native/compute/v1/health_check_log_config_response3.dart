// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of logging on a health check. If logging is enabled, logs will be exported to Stackdriver.
class HealthCheckLogConfigResponse3 {
  /// Indicates whether or not to export logs. This is false by default, which means no health check logging will be done.
  final bool enable;

  HealthCheckLogConfigResponse3({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    return map;
  }

  factory HealthCheckLogConfigResponse3.fromMap(Map<String, dynamic> map) {
    return HealthCheckLogConfigResponse3(
      enable: map['enable'] as bool,
    );
  }
}
