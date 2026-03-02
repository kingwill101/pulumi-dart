// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv6_circuit_connection_config_response.dart';
import 'sub_resource_response.dart';

/// Express Route Circuit Connection in an ExpressRouteCircuitPeering resource.
class ExpressRouteCircuitConnectionResponse {
  /// /29 IP address space to carve out Customer addresses for tunnels.
  final pulumi.Input<String>? addressPrefix;
  /// The authorization key.
  final pulumi.Input<String>? authorizationKey;
  /// Express Route Circuit connection state.
  final pulumi.Input<String> circuitConnectionStatus;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection.
  final pulumi.Input<SubResourceResponse>? expressRouteCircuitPeering;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// IPv6 Address PrefixProperties of the express route circuit connection.
  final pulumi.Input<Ipv6CircuitConnectionConfigResponse>? ipv6CircuitConnectionConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Reference to Express Route Circuit Private Peering Resource of the peered circuit.
  final pulumi.Input<SubResourceResponse>? peerExpressRouteCircuitPeering;
  /// The provisioning state of the express route circuit connection resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

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
      'expressRouteCircuitPeering': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(expressRouteCircuitPeering, (value) => value.toMap()),
      'id': ?id,
      'ipv6CircuitConnectionConfig': ?pulumi.Input.mapOptionalInputValue<Ipv6CircuitConnectionConfigResponse, Map<String, dynamic>>(ipv6CircuitConnectionConfig, (value) => value.toMap()),
      'name': ?name,
      'peerExpressRouteCircuitPeering': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(peerExpressRouteCircuitPeering, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ExpressRouteCircuitConnectionResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteCircuitConnectionResponse(
      addressPrefix: map['addressPrefix'] == null ? null : (map['addressPrefix'] as String).input(),
      authorizationKey: map['authorizationKey'] == null ? null : (map['authorizationKey'] as String).input(),
      circuitConnectionStatus: (map['circuitConnectionStatus'] as String).input(),
      etag: (map['etag'] as String).input(),
      expressRouteCircuitPeering: map['expressRouteCircuitPeering'] == null ? null : (SubResourceResponse.fromMap((map['expressRouteCircuitPeering'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ipv6CircuitConnectionConfig: map['ipv6CircuitConnectionConfig'] == null ? null : (Ipv6CircuitConnectionConfigResponse.fromMap((map['ipv6CircuitConnectionConfig'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      peerExpressRouteCircuitPeering: map['peerExpressRouteCircuitPeering'] == null ? null : (SubResourceResponse.fromMap((map['peerExpressRouteCircuitPeering'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

