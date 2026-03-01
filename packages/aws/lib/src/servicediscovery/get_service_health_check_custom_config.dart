// ignore_for_file: unused_element, unnecessary_cast

class GetServiceHealthCheckCustomConfig {
  /// The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Maximum value of 10.
  final int failureThreshold;

  /// Creates a new [GetServiceHealthCheckCustomConfig].
  /// [failureThreshold] The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Maximum value of 10.
  GetServiceHealthCheckCustomConfig({required this.failureThreshold});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'failureThreshold': failureThreshold};
  }

  factory GetServiceHealthCheckCustomConfig.fromMap(Map<String, dynamic> map) {
    return GetServiceHealthCheckCustomConfig(
      failureThreshold: map['failureThreshold'] as int,
    );
  }
}
