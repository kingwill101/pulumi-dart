// ignore_for_file: unused_element, unnecessary_cast


class ServiceHealthCheckCustomConfig {
  /// The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Value is always set to 1.
  final int? failureThreshold;

  /// Creates a new [ServiceHealthCheckCustomConfig].
  /// [failureThreshold] The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Value is always set to 1.
  ServiceHealthCheckCustomConfig({
    this.failureThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
    };
  }

  factory ServiceHealthCheckCustomConfig.fromMap(Map<String, dynamic> map) {
    return ServiceHealthCheckCustomConfig(
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
    );
  }
}

