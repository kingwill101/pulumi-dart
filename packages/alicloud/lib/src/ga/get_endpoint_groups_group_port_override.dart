// ignore_for_file: unused_element, unnecessary_cast


class GetEndpointGroupsGroupPortOverride {
  /// Forwarding port.
  final int endpointPort;
  /// Listener port.
  final int listenerPort;

  /// Creates a new [GetEndpointGroupsGroupPortOverride].
  /// [endpointPort] Forwarding port.
  /// [listenerPort] Listener port.
  GetEndpointGroupsGroupPortOverride({
    required this.endpointPort,
    required this.listenerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointPort': endpointPort,
      'listenerPort': listenerPort,
    };
  }

  factory GetEndpointGroupsGroupPortOverride.fromMap(Map<String, dynamic> map) {
    return GetEndpointGroupsGroupPortOverride(
      endpointPort: map['endpointPort'] as int,
      listenerPort: map['listenerPort'] as int,
    );
  }
}

