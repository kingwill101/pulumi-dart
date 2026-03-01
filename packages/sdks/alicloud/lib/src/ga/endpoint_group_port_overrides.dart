// ignore_for_file: unused_element, unnecessary_cast


class EndpointGroupPortOverrides {
  /// Forwarding port.
  final int? endpointPort;
  /// Listener port.
  final int? listenerPort;

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
      endpointPort: map['endpointPort'] == null ? null : map['endpointPort'] as int,
      listenerPort: map['listenerPort'] == null ? null : map['listenerPort'] as int,
    );
  }
}

