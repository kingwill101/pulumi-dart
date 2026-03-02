// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the TCP configuration.
class ConnectionMonitorTcpConfigurationResponse {
  /// Destination port behavior.
  final pulumi.Input<String>? destinationPortBehavior;
  /// Value indicating whether path evaluation with trace route should be disabled.
  final pulumi.Input<bool>? disableTraceRoute;
  /// The port to connect to.
  final pulumi.Input<int>? port;

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
      destinationPortBehavior: map['destinationPortBehavior'] == null ? null : (map['destinationPortBehavior'] as String).input(),
      disableTraceRoute: map['disableTraceRoute'] == null ? null : (map['disableTraceRoute'] as bool).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

