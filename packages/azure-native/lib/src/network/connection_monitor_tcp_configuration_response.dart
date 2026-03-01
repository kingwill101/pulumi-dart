// ignore_for_file: unused_element, unnecessary_cast


/// Describes the TCP configuration.
class ConnectionMonitorTcpConfigurationResponse {
  /// Destination port behavior.
  final String? destinationPortBehavior;
  /// Value indicating whether path evaluation with trace route should be disabled.
  final bool? disableTraceRoute;
  /// The port to connect to.
  final int? port;

  /// Creates a new [ConnectionMonitorTcpConfigurationResponse].
  /// [destinationPortBehavior] Destination port behavior.
  /// [disableTraceRoute] Value indicating whether path evaluation with trace route should be disabled.
  /// [port] The port to connect to.
  ConnectionMonitorTcpConfigurationResponse({
    this.destinationPortBehavior,
    this.disableTraceRoute,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationPortBehavior': ?destinationPortBehavior,
      'disableTraceRoute': ?disableTraceRoute,
      'port': ?port,
    };
  }

  factory ConnectionMonitorTcpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorTcpConfigurationResponse(
      destinationPortBehavior: map['destinationPortBehavior'] == null ? null : map['destinationPortBehavior'] as String,
      disableTraceRoute: map['disableTraceRoute'] == null ? null : map['disableTraceRoute'] as bool,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

