// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_load_balancer_tunnel_interface.dart';
import 'load_balancer_backend_address.dart';
import 'sub_resource.dart';

/// Pool of backend IP addresses.
class BackendAddressPool {
  /// Amount of seconds Load Balancer waits for before sending RESET to client and backend address.
  final pulumi.Input<int>? drainPeriodInSeconds;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// An array of backend addresses.
  final pulumi.Input<List<LoadBalancerBackendAddress>>? loadBalancerBackendAddresses;
  /// The location of the backend address pool.
  final pulumi.Input<String>? location;
  /// The name of the resource that is unique within the set of backend address pools used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Backend address synchronous mode for the backend pool
  final pulumi.Input<String>? syncMode;
  /// An array of gateway load balancer tunnel interfaces.
  final pulumi.Input<List<GatewayLoadBalancerTunnelInterface>>? tunnelInterfaces;
  /// A reference to a virtual network.
  final pulumi.Input<SubResource>? virtualNetwork;

  /// Creates a new [BackendAddressPool].
  /// [drainPeriodInSeconds] Amount of seconds Load Balancer waits for before sending RESET to client and backend address.
  /// [id] Resource ID.
  /// [loadBalancerBackendAddresses] An array of backend addresses.
  /// [location] The location of the backend address pool.
  /// [name] The name of the resource that is unique within the set of backend address pools used by the load balancer. This name can be used to access the resource.
  /// [syncMode] Backend address synchronous mode for the backend pool
  /// [tunnelInterfaces] An array of gateway load balancer tunnel interfaces.
  /// [virtualNetwork] A reference to a virtual network.
  BackendAddressPool({
    this.drainPeriodInSeconds,
    this.id,
    this.loadBalancerBackendAddresses,
    this.location,
    this.name,
    this.syncMode,
    this.tunnelInterfaces,
    this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainPeriodInSeconds': ?drainPeriodInSeconds,
      'id': ?id,
      'loadBalancerBackendAddresses': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerBackendAddress>, List<Map<String, dynamic>>>(loadBalancerBackendAddresses, (value) => pulumi.Input.encodeList<LoadBalancerBackendAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'syncMode': ?syncMode,
      'tunnelInterfaces': ?pulumi.Input.mapOptionalInputValue<List<GatewayLoadBalancerTunnelInterface>, List<Map<String, dynamic>>>(tunnelInterfaces, (value) => pulumi.Input.encodeList<GatewayLoadBalancerTunnelInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetwork': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
    };
  }

  factory BackendAddressPool.fromMap(Map<String, dynamic> map) {
    return BackendAddressPool(
      drainPeriodInSeconds: map['drainPeriodInSeconds'] == null ? null : (map['drainPeriodInSeconds'] as int).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      loadBalancerBackendAddresses: map['loadBalancerBackendAddresses'] == null ? null : (pulumi.Input.decodeList<LoadBalancerBackendAddress>(map['loadBalancerBackendAddresses'], (value) => LoadBalancerBackendAddress.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      syncMode: map['syncMode'] == null ? null : (map['syncMode'] as String).input(),
      tunnelInterfaces: map['tunnelInterfaces'] == null ? null : (pulumi.Input.decodeList<GatewayLoadBalancerTunnelInterface>(map['tunnelInterfaces'], (value) => GatewayLoadBalancerTunnelInterface.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualNetwork: map['virtualNetwork'] == null ? null : (SubResource.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

