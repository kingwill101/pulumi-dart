// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Peer Express Route Circuit Connection in an ExpressRouteCircuitPeering resource.
class PeerExpressRouteCircuitConnectionResponse {
  /// /29 IP address space to carve out Customer addresses for tunnels.
  final String? addressPrefix;
  /// The resource guid of the authorization used for the express route circuit connection.
  final String? authResourceGuid;
  /// Express Route Circuit connection state.
  final String circuitConnectionStatus;
  /// The name of the express route circuit connection resource.
  final String? connectionName;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Reference to Express Route Circuit Private Peering Resource of the circuit.
  final SubResourceResponse? expressRouteCircuitPeering;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  final SubResourceResponse? peerExpressRouteCircuitPeering;
  /// The provisioning state of the peer express route circuit connection resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [PeerExpressRouteCircuitConnectionResponse].
  /// [addressPrefix] /29 IP address space to carve out Customer addresses for tunnels.
  /// [authResourceGuid] The resource guid of the authorization used for the express route circuit connection.
  /// [circuitConnectionStatus] Express Route Circuit connection state.
  /// [connectionName] The name of the express route circuit connection resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the circuit.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerExpressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  /// [provisioningState] The provisioning state of the peer express route circuit connection resource.
  /// [type] Type of the resource.
  PeerExpressRouteCircuitConnectionResponse({
    this.addressPrefix,
    this.authResourceGuid,
    required this.circuitConnectionStatus,
    this.connectionName,
    required this.etag,
    this.expressRouteCircuitPeering,
    this.id,
    this.name,
    this.peerExpressRouteCircuitPeering,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'authResourceGuid': ?authResourceGuid,
      'circuitConnectionStatus': circuitConnectionStatus,
      'connectionName': ?connectionName,
      'etag': etag,
      'expressRouteCircuitPeering': ?expressRouteCircuitPeering == null ? null : expressRouteCircuitPeering!.toMap(),
      'id': ?id,
      'name': ?name,
      'peerExpressRouteCircuitPeering': ?peerExpressRouteCircuitPeering == null ? null : peerExpressRouteCircuitPeering!.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory PeerExpressRouteCircuitConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PeerExpressRouteCircuitConnectionResponse(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      authResourceGuid: map['authResourceGuid'] == null ? null : map['authResourceGuid'] as String,
      circuitConnectionStatus: map['circuitConnectionStatus'] as String,
      connectionName: map['connectionName'] == null ? null : map['connectionName'] as String,
      etag: map['etag'] as String,
      expressRouteCircuitPeering: map['expressRouteCircuitPeering'] == null ? null : SubResourceResponse.fromMap((map['expressRouteCircuitPeering'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      peerExpressRouteCircuitPeering: map['peerExpressRouteCircuitPeering'] == null ? null : SubResourceResponse.fromMap((map['peerExpressRouteCircuitPeering'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

