// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_port_mappings_custom_routing_port_mapping_destination_socket_address.dart';

class GetCustomRoutingPortMappingsCustomRoutingPortMapping {
  /// The ID of the GA instance.
  final pulumi.Input<String> acceleratorId;
  /// The acceleration port.
  final pulumi.Input<int> acceleratorPort;
  /// The service IP address and port of the backend instance.
  final pulumi.Input<List<GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress>> destinationSocketAddresses;
  /// The ID of the endpoint group.
  final pulumi.Input<String> endpointGroupId;
  /// The ID of the region in which the endpoint group resides.
  final pulumi.Input<String> endpointGroupRegion;
  /// The ID of the endpoint.
  final pulumi.Input<String> endpointId;
  /// The ID of the listener.
  final pulumi.Input<String> listenerId;
  /// The protocol of the backend service.
  final pulumi.Input<List<String>> protocols;
  /// The access policy of traffic for the backend instance. Valid Values: `allow`, `deny`.
  final pulumi.Input<String> status;
  /// The ID of the endpoint (vSwitch).
  final pulumi.Input<String> vswitch;

  /// Creates a new [GetCustomRoutingPortMappingsCustomRoutingPortMapping].
  /// [acceleratorId] The ID of the GA instance.
  /// [acceleratorPort] The acceleration port.
  /// [destinationSocketAddresses] The service IP address and port of the backend instance.
  /// [endpointGroupId] The ID of the endpoint group.
  /// [endpointGroupRegion] The ID of the region in which the endpoint group resides.
  /// [endpointId] The ID of the endpoint.
  /// [listenerId] The ID of the listener.
  /// [protocols] The protocol of the backend service.
  /// [status] The access policy of traffic for the backend instance. Valid Values: `allow`, `deny`.
  /// [vswitch] The ID of the endpoint (vSwitch).
  GetCustomRoutingPortMappingsCustomRoutingPortMapping({
    required this.acceleratorId,
    required this.acceleratorPort,
    required this.destinationSocketAddresses,
    required this.endpointGroupId,
    required this.endpointGroupRegion,
    required this.endpointId,
    required this.listenerId,
    required this.protocols,
    required this.status,
    required this.vswitch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorId': acceleratorId,
      'acceleratorPort': acceleratorPort,
      'destinationSocketAddresses': pulumi.Input.mapInputValue<List<GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress>, List<Map<String, dynamic>>>(destinationSocketAddresses, (value) => pulumi.Input.encodeList<GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointGroupId': endpointGroupId,
      'endpointGroupRegion': endpointGroupRegion,
      'endpointId': endpointId,
      'listenerId': listenerId,
      'protocols': protocols,
      'status': status,
      'vswitch': vswitch,
    };
  }

  factory GetCustomRoutingPortMappingsCustomRoutingPortMapping.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingPortMappingsCustomRoutingPortMapping(
      acceleratorId: pulumi.Input.fromValue(map['acceleratorId'] as String),
      acceleratorPort: pulumi.Input.fromValue(map['acceleratorPort'] as int),
      destinationSocketAddresses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress>(map['destinationSocketAddresses']!, (value) => GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress.fromMap((value as Map).cast<String, dynamic>()))),
      endpointGroupId: pulumi.Input.fromValue(map['endpointGroupId'] as String),
      endpointGroupRegion: pulumi.Input.fromValue(map['endpointGroupRegion'] as String),
      endpointId: pulumi.Input.fromValue(map['endpointId'] as String),
      listenerId: pulumi.Input.fromValue(map['listenerId'] as String),
      protocols: pulumi.Input.fromValue((map['protocols'] as List).cast<String>()),
      status: pulumi.Input.fromValue(map['status'] as String),
      vswitch: pulumi.Input.fromValue(map['vswitch'] as String),
    );
  }
}

