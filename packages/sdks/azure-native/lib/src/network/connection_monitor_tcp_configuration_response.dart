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
      destinationPortBehavior: (() { final guardedValue = map['destinationPortBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableTraceRoute: (() { final guardedValue = map['disableTraceRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

