// ignore_for_file: unused_element, unnecessary_cast

class RegionHealthCheckLogConfig {
  /// Indicates whether or not to export logs. This is false by default,
  /// which means no health check logging will be done.
  final bool? enable;

  /// Creates a new [RegionHealthCheckLogConfig].
  /// [enable] Indicates whether or not to export logs. This is false by default,
  RegionHealthCheckLogConfig({
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

  factory RegionHealthCheckLogConfig.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckLogConfig(
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}
