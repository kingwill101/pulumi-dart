// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_endpoints_endpoint_address_item.dart';

class GetEndpointsEndpoint {
  /// A list of endpoint addresses. Each element contains the following attributes.
  final List<GetEndpointsEndpointAddressItem> addressItems;
  /// Whether the new node is automatically added to the default cluster address.Options are `Enable` and `Disable`.
  final String autoAddNewNodes;
  /// endpoint of the cluster.
  final String dbEndpointId;
  /// The Endpoint configuration. `ConsistLevel`: session consistency level, value:`0`: final consistency,`1`: session consistency;`LoadBalanceStrategy`: load balancing strategy. Based on the automatic scheduling of load, the value is: `load`.
  final String endpointConfig;
  /// Cluster address type.`Cluster`: the default address of the Cluster.`Primary`: Primary address.`Custom`: Custom cluster addresses.
  final String endpointType;
  /// A list of nodes that connect to the address configuration.
  final String nodes;
  /// Read-write mode:`ReadWrite`: readable and writable (automatic read-write separation).`ReadOnly`: ReadOnly.
  final String readWriteMode;

  /// Creates a new [GetEndpointsEndpoint].
  /// [addressItems] A list of endpoint addresses. Each element contains the following attributes.
  /// [autoAddNewNodes] Whether the new node is automatically added to the default cluster address.Options are `Enable` and `Disable`.
  /// [dbEndpointId] endpoint of the cluster.
  /// [endpointConfig] The Endpoint configuration. `ConsistLevel`: session consistency level, value:`0`: final consistency,`1`: session consistency;`LoadBalanceStrategy`: load balancing strategy. Based on the automatic scheduling of load, the value is: `load`.
  /// [endpointType] Cluster address type.`Cluster`: the default address of the Cluster.`Primary`: Primary address.`Custom`: Custom cluster addresses.
  /// [nodes] A list of nodes that connect to the address configuration.
  /// [readWriteMode] Read-write mode:`ReadWrite`: readable and writable (automatic read-write separation).`ReadOnly`: ReadOnly.
  GetEndpointsEndpoint({
    required this.addressItems,
    required this.autoAddNewNodes,
    required this.dbEndpointId,
    required this.endpointConfig,
    required this.endpointType,
    required this.nodes,
    required this.readWriteMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressItems': pulumi.Input.encodeList<GetEndpointsEndpointAddressItem, Map<String, dynamic>>(addressItems, (value) => value.toMap()),
      'autoAddNewNodes': autoAddNewNodes,
      'dbEndpointId': dbEndpointId,
      'endpointConfig': endpointConfig,
      'endpointType': endpointType,
      'nodes': nodes,
      'readWriteMode': readWriteMode,
    };
  }

  factory GetEndpointsEndpoint.fromMap(Map<String, dynamic> map) {
    return GetEndpointsEndpoint(
      addressItems: pulumi.Input.decodeList<GetEndpointsEndpointAddressItem>(map['addressItems'], (value) => GetEndpointsEndpointAddressItem.fromMap((value as Map).cast<String, dynamic>())),
      autoAddNewNodes: map['autoAddNewNodes'] as String,
      dbEndpointId: map['dbEndpointId'] as String,
      endpointConfig: map['endpointConfig'] as String,
      endpointType: map['endpointType'] as String,
      nodes: map['nodes'] as String,
      readWriteMode: map['readWriteMode'] as String,
    );
  }
}

