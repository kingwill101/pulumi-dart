// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_load_balancer_tunnel_interface_response.dart';
import 'load_balancer_backend_address_response.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'sub_resource_response.dart';

/// Pool of backend IP addresses.
class BackendAddressPoolResponse {
  /// An array of references to IP addresses defined in network interfaces.
  final pulumi.Input<List<NetworkInterfaceIPConfigurationResponse>> backendIPConfigurations;
  /// Amount of seconds Load Balancer waits for before sending RESET to client and backend address.
  final pulumi.Input<int>? drainPeriodInSeconds;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// An array of references to inbound NAT rules that use this backend address pool.
  final pulumi.Input<List<SubResourceResponse>> inboundNatRules;
  /// An array of backend addresses.
  final pulumi.Input<List<LoadBalancerBackendAddressResponse>>? loadBalancerBackendAddresses;
  /// An array of references to load balancing rules that use this backend address pool.
  final pulumi.Input<List<SubResourceResponse>> loadBalancingRules;
  /// The location of the backend address pool.
  final pulumi.Input<String>? location;
  /// The name of the resource that is unique within the set of backend address pools used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// A reference to an outbound rule that uses this backend address pool.
  final pulumi.Input<SubResourceResponse> outboundRule;
  /// An array of references to outbound rules that use this backend address pool.
  final pulumi.Input<List<SubResourceResponse>> outboundRules;
  /// The provisioning state of the backend address pool resource.
  final pulumi.Input<String> provisioningState;
  /// Backend address synchronous mode for the backend pool
  final pulumi.Input<String>? syncMode;
  /// An array of gateway load balancer tunnel interfaces.
  final pulumi.Input<List<GatewayLoadBalancerTunnelInterfaceResponse>>? tunnelInterfaces;
  /// Type of the resource.
  final pulumi.Input<String> type;
  /// A reference to a virtual network.
  final pulumi.Input<SubResourceResponse>? virtualNetwork;

  /// Creates a new [BackendAddressPoolResponse].
  /// [backendIPConfigurations] An array of references to IP addresses defined in network interfaces.
  /// [drainPeriodInSeconds] Amount of seconds Load Balancer waits for before sending RESET to client and backend address.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [inboundNatRules] An array of references to inbound NAT rules that use this backend address pool.
  /// [loadBalancerBackendAddresses] An array of backend addresses.
  /// [loadBalancingRules] An array of references to load balancing rules that use this backend address pool.
  /// [location] The location of the backend address pool.
  /// [name] The name of the resource that is unique within the set of backend address pools used by the load balancer. This name can be used to access the resource.
  /// [outboundRule] A reference to an outbound rule that uses this backend address pool.
  /// [outboundRules] An array of references to outbound rules that use this backend address pool.
  /// [provisioningState] The provisioning state of the backend address pool resource.
  /// [syncMode] Backend address synchronous mode for the backend pool
  /// [tunnelInterfaces] An array of gateway load balancer tunnel interfaces.
  /// [type] Type of the resource.
  /// [virtualNetwork] A reference to a virtual network.
  BackendAddressPoolResponse({
    required this.backendIPConfigurations,
    this.drainPeriodInSeconds,
    required this.etag,
    this.id,
    required this.inboundNatRules,
    this.loadBalancerBackendAddresses,
    required this.loadBalancingRules,
    this.location,
    this.name,
    required this.outboundRule,
    required this.outboundRules,
    required this.provisioningState,
    this.syncMode,
    this.tunnelInterfaces,
    required this.type,
    this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendIPConfigurations': pulumi.Input.mapInputValue<List<NetworkInterfaceIPConfigurationResponse>, List<Map<String, dynamic>>>(backendIPConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'drainPeriodInSeconds': ?drainPeriodInSeconds,
      'etag': etag,
      'id': ?id,
      'inboundNatRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(inboundNatRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerBackendAddresses': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancerBackendAddressResponse>, List<Map<String, dynamic>>>(loadBalancerBackendAddresses, (value) => pulumi.Input.encodeList<LoadBalancerBackendAddressResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(loadBalancingRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'outboundRule': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(outboundRule, (value) => value.toMap()),
      'outboundRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(outboundRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'syncMode': ?syncMode,
      'tunnelInterfaces': ?pulumi.Input.mapOptionalInputValue<List<GatewayLoadBalancerTunnelInterfaceResponse>, List<Map<String, dynamic>>>(tunnelInterfaces, (value) => pulumi.Input.encodeList<GatewayLoadBalancerTunnelInterfaceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'virtualNetwork': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
    };
  }

  factory BackendAddressPoolResponse.fromMap(Map<String, dynamic> map) {
    return BackendAddressPoolResponse(
      backendIPConfigurations: (pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(map['backendIPConfigurations'], (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      drainPeriodInSeconds: map['drainPeriodInSeconds'] == null ? null : (map['drainPeriodInSeconds'] as int).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      inboundNatRules: (pulumi.Input.decodeList<SubResourceResponse>(map['inboundNatRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerBackendAddresses: map['loadBalancerBackendAddresses'] == null ? null : (pulumi.Input.decodeList<LoadBalancerBackendAddressResponse>(map['loadBalancerBackendAddresses'], (value) => LoadBalancerBackendAddressResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancingRules: (pulumi.Input.decodeList<SubResourceResponse>(map['loadBalancingRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      outboundRule: (SubResourceResponse.fromMap((map['outboundRule'] as Map).cast<String, dynamic>())).input(),
      outboundRules: (pulumi.Input.decodeList<SubResourceResponse>(map['outboundRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      syncMode: map['syncMode'] == null ? null : (map['syncMode'] as String).input(),
      tunnelInterfaces: map['tunnelInterfaces'] == null ? null : (pulumi.Input.decodeList<GatewayLoadBalancerTunnelInterfaceResponse>(map['tunnelInterfaces'], (value) => GatewayLoadBalancerTunnelInterfaceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      virtualNetwork: map['virtualNetwork'] == null ? null : (SubResourceResponse.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

