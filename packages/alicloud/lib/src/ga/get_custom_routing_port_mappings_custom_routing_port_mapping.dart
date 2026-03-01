// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_routing_port_mappings_custom_routing_port_mapping_destination_socket_address.dart';

class GetCustomRoutingPortMappingsCustomRoutingPortMapping {
  /// The ID of the GA instance.
  final String acceleratorId;
  /// The acceleration port.
  final int acceleratorPort;
  /// The service IP address and port of the backend instance.
  final List<GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress> destinationSocketAddresses;
  /// The ID of the endpoint group.
  final String endpointGroupId;
  /// The ID of the region in which the endpoint group resides.
  final String endpointGroupRegion;
  /// The ID of the endpoint.
  final String endpointId;
  /// The ID of the listener.
  final String listenerId;
  /// The protocol of the backend service.
  final List<String> protocols;
  /// The access policy of traffic for the backend instance. Valid Values: `allow`, `deny`.
  final String status;
  /// The ID of the endpoint (vSwitch).
  final String vswitch;

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
      'destinationSocketAddresses': pulumi.Input.encodeList<GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress, Map<String, dynamic>>(destinationSocketAddresses, (value) => value.toMap()),
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
      acceleratorId: map['acceleratorId'] as String,
      acceleratorPort: map['acceleratorPort'] as int,
      destinationSocketAddresses: pulumi.Input.decodeList<GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress>(map['destinationSocketAddresses'], (value) => GetCustomRoutingPortMappingsCustomRoutingPortMappingDestinationSocketAddress.fromMap((value as Map).cast<String, dynamic>())),
      endpointGroupId: map['endpointGroupId'] as String,
      endpointGroupRegion: map['endpointGroupRegion'] as String,
      endpointId: map['endpointId'] as String,
      listenerId: map['listenerId'] as String,
      protocols: (map['protocols'] as List).cast<String>(),
      status: map['status'] as String,
      vswitch: map['vswitch'] as String,
    );
  }
}

