// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointGroupPortOverrides {
  /// Forwarding port.
  final pulumi.Input<int>? endpointPort;
  /// Listener port.
  final pulumi.Input<int>? listenerPort;

  /// Creates a new [EndpointGroupPortOverrides].
  /// [endpointPort] Forwarding port.
  /// [listenerPort] Listener port.
  EndpointGroupPortOverrides({
    this.endpointPort,
    this.listenerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointPort': ?endpointPort,
      'listenerPort': ?listenerPort,
    };
  }

  factory EndpointGroupPortOverrides.fromMap(Map<String, dynamic> map) {
    return EndpointGroupPortOverrides(
      endpointPort: (() { final guardedValue = map['endpointPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      listenerPort: (() { final guardedValue = map['listenerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

