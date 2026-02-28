// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecListenerHealthCheck {
  final int healthyThreshold;
  final int intervalMillis;
  final String path;
  final int port;
  final String protocol;
  final int timeoutMillis;
  final int unhealthyThreshold;

  /// Creates a new [GetVirtualGatewaySpecListenerHealthCheck].
  /// [healthyThreshold] Required.
  /// [intervalMillis] Required.
  /// [path] Required.
  /// [port] Required.
  /// [protocol] Required.
  /// [timeoutMillis] Required.
  /// [unhealthyThreshold] Required.
  GetVirtualGatewaySpecListenerHealthCheck({
    required this.healthyThreshold,
    required this.intervalMillis,
    required this.path,
    required this.port,
    required this.protocol,
    required this.timeoutMillis,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['healthyThreshold'] = healthyThreshold;
    map['intervalMillis'] = intervalMillis;
    map['path'] = path;
    map['port'] = port;
    map['protocol'] = protocol;
    map['timeoutMillis'] = timeoutMillis;
    map['unhealthyThreshold'] = unhealthyThreshold;
    return map;
  }

  factory GetVirtualGatewaySpecListenerHealthCheck.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerHealthCheck(
      healthyThreshold: map['healthyThreshold'] as int,
      intervalMillis: map['intervalMillis'] as int,
      path: map['path'] as String,
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      timeoutMillis: map['timeoutMillis'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}
