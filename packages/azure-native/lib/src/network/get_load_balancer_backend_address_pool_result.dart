// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_load_balancer_tunnel_interface_response.dart';
import 'load_balancer_backend_address_response.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getLoadBalancerBackendAddressPool.
class GetLoadBalancerBackendAddressPoolResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// An array of references to IP addresses defined in network interfaces.
  final List<NetworkInterfaceIPConfigurationResponse> backendIPConfigurations;
  /// Amount of seconds Load Balancer waits for before sending RESET to client and backend address.
  final int? drainPeriodInSeconds;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// An array of references to inbound NAT rules that use this backend address pool.
  final List<SubResourceResponse> inboundNatRules;
  /// An array of backend addresses.
  final List<LoadBalancerBackendAddressResponse>? loadBalancerBackendAddresses;
  /// An array of references to load balancing rules that use this backend address pool.
  final List<SubResourceResponse> loadBalancingRules;
  /// The location of the backend address pool.
  final String? location;
  /// The name of the resource that is unique within the set of backend address pools used by the load balancer. This name can be used to access the resource.
  final String? name;
  /// A reference to an outbound rule that uses this backend address pool.
  final SubResourceResponse outboundRule;
  /// An array of references to outbound rules that use this backend address pool.
  final List<SubResourceResponse> outboundRules;
  /// The provisioning state of the backend address pool resource.
  final String provisioningState;
  /// Backend address synchronous mode for the backend pool
  final String? syncMode;
  /// An array of gateway load balancer tunnel interfaces.
  final List<GatewayLoadBalancerTunnelInterfaceResponse>? tunnelInterfaces;
  /// Type of the resource.
  final String type;
  /// A reference to a virtual network.
  final SubResourceResponse? virtualNetwork;

  /// Creates a new [GetLoadBalancerBackendAddressPoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
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
  GetLoadBalancerBackendAddressPoolResult({
    required this.azureApiVersion,
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
      'azureApiVersion': azureApiVersion,
      'backendIPConfigurations': pulumi.Input.encodeList<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(backendIPConfigurations, (value) => value.toMap()),
      'drainPeriodInSeconds': ?drainPeriodInSeconds,
      'etag': etag,
      'id': ?id,
      'inboundNatRules': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(inboundNatRules, (value) => value.toMap()),
      'loadBalancerBackendAddresses': ?loadBalancerBackendAddresses == null ? null : pulumi.Input.encodeList<LoadBalancerBackendAddressResponse, Map<String, dynamic>>(loadBalancerBackendAddresses!, (value) => value.toMap()),
      'loadBalancingRules': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(loadBalancingRules, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'outboundRule': outboundRule.toMap(),
      'outboundRules': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(outboundRules, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'syncMode': ?syncMode,
      'tunnelInterfaces': ?tunnelInterfaces == null ? null : pulumi.Input.encodeList<GatewayLoadBalancerTunnelInterfaceResponse, Map<String, dynamic>>(tunnelInterfaces!, (value) => value.toMap()),
      'type': type,
      'virtualNetwork': ?virtualNetwork == null ? null : virtualNetwork!.toMap(),
    };
  }

  factory GetLoadBalancerBackendAddressPoolResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerBackendAddressPoolResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backendIPConfigurations: pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(map['backendIPConfigurations'], (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      drainPeriodInSeconds: map['drainPeriodInSeconds'] == null ? null : map['drainPeriodInSeconds'] as int,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      inboundNatRules: pulumi.Input.decodeList<SubResourceResponse>(map['inboundNatRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerBackendAddresses: map['loadBalancerBackendAddresses'] == null ? null : pulumi.Input.decodeList<LoadBalancerBackendAddressResponse>(map['loadBalancerBackendAddresses'], (value) => LoadBalancerBackendAddressResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancingRules: pulumi.Input.decodeList<SubResourceResponse>(map['loadBalancingRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      outboundRule: SubResourceResponse.fromMap((map['outboundRule'] as Map).cast<String, dynamic>()),
      outboundRules: pulumi.Input.decodeList<SubResourceResponse>(map['outboundRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      syncMode: map['syncMode'] == null ? null : map['syncMode'] as String,
      tunnelInterfaces: map['tunnelInterfaces'] == null ? null : pulumi.Input.decodeList<GatewayLoadBalancerTunnelInterfaceResponse>(map['tunnelInterfaces'], (value) => GatewayLoadBalancerTunnelInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      virtualNetwork: map['virtualNetwork'] == null ? null : SubResourceResponse.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>()),
    );
  }
}

