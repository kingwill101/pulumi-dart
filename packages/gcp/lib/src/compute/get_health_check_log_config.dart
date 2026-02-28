// ignore_for_file: unused_element, unnecessary_cast


class GetHealthCheckLogConfig {
  /// Indicates whether or not to export logs. This is false by default,
  /// which means no health check logging will be done.
  final bool enable;

  /// Creates a new [GetHealthCheckLogConfig].
  /// [enable] Indicates whether or not to export logs. This is false by default,
  GetHealthCheckLogConfig({
    required this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': enable,
    };
  }

  factory GetHealthCheckLogConfig.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckLogConfig(
      enable: map['enable'] as bool,
    );
  }
}

