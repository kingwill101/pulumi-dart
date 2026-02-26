// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of logging on a health check. If logging is enabled, logs will be exported to Stackdriver.
class HealthCheckLogConfigResponse {
  /// Indicates whether or not to export logs. This is false by default, which means no health check logging will be done.
  final bool enable;

  HealthCheckLogConfigResponse({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enable'] = enable;
    return map;
  }

  factory HealthCheckLogConfigResponse.fromMap(Map<String, dynamic> map) {
    return HealthCheckLogConfigResponse(
      enable: map['enable'] as bool,
    );
  }
}
