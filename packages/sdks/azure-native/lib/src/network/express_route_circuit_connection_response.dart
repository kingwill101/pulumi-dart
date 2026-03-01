// ignore_for_file: unused_element, unnecessary_cast

import 'ipv6_circuit_connection_config_response.dart';
import 'sub_resource_response.dart';

/// Express Route Circuit Connection in an ExpressRouteCircuitPeering resource.
class ExpressRouteCircuitConnectionResponse {
  /// /29 IP address space to carve out Customer addresses for tunnels.
  final String? addressPrefix;
  /// The authorization key.
  final String? authorizationKey;
  /// Express Route Circuit connection state.
  final String circuitConnectionStatus;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection.
  final SubResourceResponse? expressRouteCircuitPeering;
  /// Resource ID.
  final String? id;
  /// IPv6 Address PrefixProperties of the express route circuit connection.
  final Ipv6CircuitConnectionConfigResponse? ipv6CircuitConnectionConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  final SubResourceResponse? peerExpressRouteCircuitPeering;
  /// The provisioning state of the express route circuit connection resource.
  final String provisioningState;
  /// Type of the resource.
  final String type;

  /// Creates a new [ExpressRouteCircuitConnectionResponse].
  /// [addressPrefix] /29 IP address space to carve out Customer addresses for tunnels.
  /// [authorizationKey] The authorization key.
  /// [circuitConnectionStatus] Express Route Circuit connection state.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [expressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection.
  /// [id] Resource ID.
  /// [ipv6CircuitConnectionConfig] IPv6 Address PrefixProperties of the express route circuit connection.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [peerExpressRouteCircuitPeering] Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  /// [provisioningState] The provisioning state of the express route circuit connection resource.
  /// [type] Type of the resource.
  ExpressRouteCircuitConnectionResponse({
    this.addressPrefix,
    this.authorizationKey,
    required this.circuitConnectionStatus,
    required this.etag,
    this.expressRouteCircuitPeering,
    this.id,
    this.ipv6CircuitConnectionConfig,
    this.name,
    this.peerExpressRouteCircuitPeering,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'authorizationKey': ?authorizationKey,
      'circuitConnectionStatus': circuitConnectionStatus,
      'etag': etag,
      'expressRouteCircuitPeering': ?expressRouteCircuitPeering == null ? null : expressRouteCircuitPeering!.toMap(),
      'id': ?id,
      'ipv6CircuitConnectionConfig': ?ipv6CircuitConnectionConfig == null ? null : ipv6CircuitConnectionConfig!.toMap(),
      'name': ?name,
      'peerExpressRouteCircuitPeering': ?peerExpressRouteCircuitPeering == null ? null : peerExpressRouteCircuitPeering!.toMap(),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ExpressRouteCircuitConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitConnectionResponse(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      authorizationKey: map['authorizationKey'] == null ? null : map['authorizationKey'] as String,
      circuitConnectionStatus: map['circuitConnectionStatus'] as String,
      etag: map['etag'] as String,
      expressRouteCircuitPeering: map['expressRouteCircuitPeering'] == null ? null : SubResourceResponse.fromMap((map['expressRouteCircuitPeering'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      ipv6CircuitConnectionConfig: map['ipv6CircuitConnectionConfig'] == null ? null : Ipv6CircuitConnectionConfigResponse.fromMap((map['ipv6CircuitConnectionConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      peerExpressRouteCircuitPeering: map['peerExpressRouteCircuitPeering'] == null ? null : SubResourceResponse.fromMap((map['peerExpressRouteCircuitPeering'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
    );
  }
}

