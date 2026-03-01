// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_load_balancer_tunnel_interface.dart';
import 'load_balancer_backend_address.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_load_balancer_backend_address_pool_args_doc}
/// The set of arguments for LoadBalancerBackendAddressPool.
/// {@endtemplate}
/// {@macro pulumi_network_load_balancer_backend_address_pool_args_doc}
class LoadBalancerBackendAddressPoolArgs {
  /// The name of the backend address pool.
  final pulumi.Input<String>? backendAddressPoolName;
  /// Amount of seconds Load Balancer waits for before sending RESET to client and backend address.
  final pulumi.Input<int>? drainPeriodInSeconds;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// An array of backend addresses.
  final pulumi.Input<List<LoadBalancerBackendAddress>>? loadBalancerBackendAddresses;
  /// The name of the load balancer.
  final pulumi.Input<String> loadBalancerName;
  /// The location of the backend address pool.
  final pulumi.Input<String>? location;
  /// The name of the resource that is unique within the set of backend address pools used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Backend address synchronous mode for the backend pool
  final pulumi.Input<String>? syncMode;
  /// An array of gateway load balancer tunnel interfaces.
  final pulumi.Input<List<GatewayLoadBalancerTunnelInterface>>? tunnelInterfaces;
  /// A reference to a virtual network.
  final pulumi.Input<SubResource>? virtualNetwork;

  /// Creates a new [LoadBalancerBackendAddressPoolArgs].
  /// [backendAddressPoolName] The name of the backend address pool.
  /// [drainPeriodInSeconds] Amount of seconds Load Balancer waits for before sending RESET to client and backend address.
  /// [id] Resource ID.
  /// [loadBalancerBackendAddresses] An array of backend addresses.
  /// [loadBalancerName] The name of the load balancer.
  /// [location] The location of the backend address pool.
  /// [name] The name of the resource that is unique within the set of backend address pools used by the load balancer. This name can be used to access the resource.
  /// [resourceGroupName] The name of the resource group.
  /// [syncMode] Backend address synchronous mode for the backend pool
  /// [tunnelInterfaces] An array of gateway load balancer tunnel interfaces.
  /// [virtualNetwork] A reference to a virtual network.
  LoadBalancerBackendAddressPoolArgs({
    String? backendAddressPoolName,
    int? drainPeriodInSeconds,
    String? id,
    List<LoadBalancerBackendAddress>? loadBalancerBackendAddresses,
    required String loadBalancerName,
    String? location,
    String? name,
    required String resourceGroupName,
    String? syncMode,
    List<GatewayLoadBalancerTunnelInterface>? tunnelInterfaces,
    SubResource? virtualNetwork,
  }) :
      backendAddressPoolName = pulumi.Input.asOptionalInput<String>(backendAddressPoolName),
      drainPeriodInSeconds = pulumi.Input.asOptionalInput<int>(drainPeriodInSeconds),
      id = pulumi.Input.asOptionalInput<String>(id),
      loadBalancerBackendAddresses = pulumi.Input.asOptionalInput<List<LoadBalancerBackendAddress>>(loadBalancerBackendAddresses),
      loadBalancerName = pulumi.Input.asInput<String>(loadBalancerName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      syncMode = pulumi.Input.asOptionalInput<String>(syncMode),
      tunnelInterfaces = pulumi.Input.asOptionalInput<List<GatewayLoadBalancerTunnelInterface>>(tunnelInterfaces),
      virtualNetwork = pulumi.Input.asOptionalInput<SubResource>(virtualNetwork);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPoolName': ?backendAddressPoolName,
      'drainPeriodInSeconds': ?drainPeriodInSeconds,
      'id': ?id,
      'loadBalancerBackendAddresses': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerBackendAddress>, List<Map<String, dynamic>>>(loadBalancerBackendAddresses, (value) => pulumi.Input.encodeList<LoadBalancerBackendAddress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerName': loadBalancerName,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'syncMode': ?syncMode,
      'tunnelInterfaces': ?pulumi.Input.mapOptionalInputValue<List<GatewayLoadBalancerTunnelInterface>, List<Map<String, dynamic>>>(tunnelInterfaces, (value) => pulumi.Input.encodeList<GatewayLoadBalancerTunnelInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetwork': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
    };
  }

  factory LoadBalancerBackendAddressPoolArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerBackendAddressPoolArgs(
      backendAddressPoolName: map['backendAddressPoolName'] == null ? null : map['backendAddressPoolName'] as String,
      drainPeriodInSeconds: map['drainPeriodInSeconds'] == null ? null : map['drainPeriodInSeconds'] as int,
      id: map['id'] == null ? null : map['id'] as String,
      loadBalancerBackendAddresses: map['loadBalancerBackendAddresses'] == null ? null : pulumi.Input.decodeList<LoadBalancerBackendAddress>(map['loadBalancerBackendAddresses'], (value) => LoadBalancerBackendAddress.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerName: map['loadBalancerName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      syncMode: map['syncMode'] == null ? null : map['syncMode'] as String,
      tunnelInterfaces: map['tunnelInterfaces'] == null ? null : pulumi.Input.decodeList<GatewayLoadBalancerTunnelInterface>(map['tunnelInterfaces'], (value) => GatewayLoadBalancerTunnelInterface.fromMap((value as Map).cast<String, dynamic>())),
      virtualNetwork: map['virtualNetwork'] == null ? null : SubResource.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

