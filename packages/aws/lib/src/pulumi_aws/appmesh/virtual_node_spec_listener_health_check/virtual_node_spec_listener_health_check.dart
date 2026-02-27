// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerHealthCheck {
  /// Number of consecutive successful health checks that must occur before declaring listener healthy.
  final int healthyThreshold;

  /// Time period in milliseconds between each health check execution.
  final int intervalMillis;

  /// Destination path for the health check request. This is only required if the specified protocol is `http` or `http2`.
  final String? path;

  /// Destination port for the health check request. This port must match the port defined in the `port_mapping` for the listener.
  final int? port;

  /// Protocol for the health check request. Valid values are `http`, `http2`, `tcp` and `grpc`.
  final String protocol;

  /// Amount of time to wait when receiving a response from the health check, in milliseconds.
  final int timeoutMillis;

  /// Number of consecutive failed health checks that must occur before declaring a virtual node unhealthy.
  final int unhealthyThreshold;

  VirtualNodeSpecListenerHealthCheck({
    required this.healthyThreshold,
    required this.intervalMillis,
    this.path,
    this.port,
    required this.protocol,
    required this.timeoutMillis,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['healthyThreshold'] = healthyThreshold;
    map['intervalMillis'] = intervalMillis;
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    map['protocol'] = protocol;
    map['timeoutMillis'] = timeoutMillis;
    map['unhealthyThreshold'] = unhealthyThreshold;
    return map;
  }

  factory VirtualNodeSpecListenerHealthCheck.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerHealthCheck(
      healthyThreshold: map['healthyThreshold'] as int,
      intervalMillis: map['intervalMillis'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] as String,
      timeoutMillis: map['timeoutMillis'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}
