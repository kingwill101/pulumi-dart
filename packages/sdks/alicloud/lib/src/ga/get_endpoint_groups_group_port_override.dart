// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointGroupsGroupPortOverride {
  /// Forwarding port.
  final pulumi.Input<int> endpointPort;
  /// Listener port.
  final pulumi.Input<int> listenerPort;

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
      endpointPort: (map['endpointPort'] as int).input(),
      listenerPort: (map['listenerPort'] as int).input(),
    );
  }
}

