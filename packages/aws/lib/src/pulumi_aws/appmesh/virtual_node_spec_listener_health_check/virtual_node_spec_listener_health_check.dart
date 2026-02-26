// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecListenerHealthCheck {
  /// Number of consecutive successful health checks that must occur before declaring listener healthy.
  final int healthyThreshold;

  /// Time period in milliseconds between each health check execution.
  final int intervalMillis;

  /// Destination path for the health check request. This is only required if the specified protocol is <span pulumi-lang-nodejs="`http`" pulumi-lang-dotnet="`Http`" pulumi-lang-go="`http`" pulumi-lang-python="`http`" pulumi-lang-yaml="`http`" pulumi-lang-java="`http`">`http`</span> or <span pulumi-lang-nodejs="`http2`" pulumi-lang-dotnet="`Http2`" pulumi-lang-go="`http2`" pulumi-lang-python="`http2`" pulumi-lang-yaml="`http2`" pulumi-lang-java="`http2`">`http2`</span>.
  final String? path;

  /// Destination port for the health check request. This port must match the port defined in the <span pulumi-lang-nodejs="`portMapping`" pulumi-lang-dotnet="`PortMapping`" pulumi-lang-go="`portMapping`" pulumi-lang-python="`port_mapping`" pulumi-lang-yaml="`portMapping`" pulumi-lang-java="`portMapping`">`port_mapping`</span> for the listener.
  final int? port;

  /// Protocol for the health check request. Valid values are <span pulumi-lang-nodejs="`http`" pulumi-lang-dotnet="`Http`" pulumi-lang-go="`http`" pulumi-lang-python="`http`" pulumi-lang-yaml="`http`" pulumi-lang-java="`http`">`http`</span>, <span pulumi-lang-nodejs="`http2`" pulumi-lang-dotnet="`Http2`" pulumi-lang-go="`http2`" pulumi-lang-python="`http2`" pulumi-lang-yaml="`http2`" pulumi-lang-java="`http2`">`http2`</span>, <span pulumi-lang-nodejs="`tcp`" pulumi-lang-dotnet="`Tcp`" pulumi-lang-go="`tcp`" pulumi-lang-python="`tcp`" pulumi-lang-yaml="`tcp`" pulumi-lang-java="`tcp`">`tcp`</span> and <span pulumi-lang-nodejs="`grpc`" pulumi-lang-dotnet="`Grpc`" pulumi-lang-go="`grpc`" pulumi-lang-python="`grpc`" pulumi-lang-yaml="`grpc`" pulumi-lang-java="`grpc`">`grpc`</span>.
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
