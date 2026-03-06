// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the ICMP configuration.
class ConnectionMonitorIcmpConfigurationResponse {
  /// Value indicating whether path evaluation with trace route should be disabled.
  final pulumi.Input<bool>? disableTraceRoute;

  /// Creates a new [ConnectionMonitorIcmpConfigurationResponse].
  /// [disableTraceRoute] Value indicating whether path evaluation with trace route should be disabled.
  const ConnectionMonitorIcmpConfigurationResponse({
    this.disableTraceRoute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableTraceRoute': ?disableTraceRoute,
    };
  }

  factory ConnectionMonitorIcmpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorIcmpConfigurationResponse(
      disableTraceRoute: (() { final guardedValue = map['disableTraceRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

