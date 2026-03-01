// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address_pool_response.dart';
import 'application_security_group_response.dart';
import 'backend_address_pool_response.dart';
import 'inbound_nat_rule_response.dart';
import 'network_interface_ipconfiguration_private_link_connection_properties_response.dart';
import 'public_ipaddress_response.dart';
import 'sub_resource_response.dart';
import 'subnet_response.dart';
import 'virtual_network_tap_response.dart';

/// IPConfiguration in a network interface.
class NetworkInterfaceIPConfigurationResponse {
  /// The reference to ApplicationGatewayBackendAddressPool resource.
  final List<ApplicationGatewayBackendAddressPoolResponse>? applicationGatewayBackendAddressPools;
  /// Application security groups in which the IP configuration is included.
  final List<ApplicationSecurityGroupResponse>? applicationSecurityGroups;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The reference to gateway load balancer frontend IP.
  final SubResourceResponse? gatewayLoadBalancer;
  /// Resource ID.
  final String? id;
  /// The reference to LoadBalancerBackendAddressPool resource.
  final List<BackendAddressPoolResponse>? loadBalancerBackendAddressPools;
  /// A list of references of LoadBalancerInboundNatRules.
  final List<InboundNatRuleResponse>? loadBalancerInboundNatRules;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Whether this is a primary customer address on the network interface.
  final bool? primary;
  /// Private IP address of the IP configuration. It can be a single IP address or a CIDR block in the format <address>/<prefix-length>.
  final String? privateIPAddress;
  /// The private IP address prefix length. If specified and the allocation method is dynamic, the service will allocate a CIDR block instead of a single IP address.
  final int? privateIPAddressPrefixLength;
  /// Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  final String? privateIPAddressVersion;
  /// The private IP address allocation method.
  final String? privateIPAllocationMethod;
  /// PrivateLinkConnection properties for the network interface.
  final NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse privateLinkConnectionProperties;
  /// The provisioning state of the network interface IP configuration.
  final String provisioningState;
  /// Public IP address bound to the IP configuration.
  final PublicIPAddressResponse? publicIPAddress;
  /// Subnet bound to the IP configuration.
  final SubnetResponse? subnet;
  /// Resource type.
  final String? type;
  /// The reference to Virtual Network Taps.
  final List<VirtualNetworkTapResponse>? virtualNetworkTaps;

  /// Creates a new [NetworkInterfaceIPConfigurationResponse].
  /// [applicationGatewayBackendAddressPools] The reference to ApplicationGatewayBackendAddressPool resource.
  /// [applicationSecurityGroups] Application security groups in which the IP configuration is included.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [gatewayLoadBalancer] The reference to gateway load balancer frontend IP.
  /// [id] Resource ID.
  /// [loadBalancerBackendAddressPools] The reference to LoadBalancerBackendAddressPool resource.
  /// [loadBalancerInboundNatRules] A list of references of LoadBalancerInboundNatRules.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [primary] Whether this is a primary customer address on the network interface.
  /// [privateIPAddress] Private IP address of the IP configuration. It can be a single IP address or a CIDR block in the format <address>/<prefix-length>.
  /// [privateIPAddressPrefixLength] The private IP address prefix length. If specified and the allocation method is dynamic, the service will allocate a CIDR block instead of a single IP address.
  /// [privateIPAddressVersion] Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [privateLinkConnectionProperties] PrivateLinkConnection properties for the network interface.
  /// [provisioningState] The provisioning state of the network interface IP configuration.
  /// [publicIPAddress] Public IP address bound to the IP configuration.
  /// [subnet] Subnet bound to the IP configuration.
  /// [type] Resource type.
  /// [virtualNetworkTaps] The reference to Virtual Network Taps.
  NetworkInterfaceIPConfigurationResponse({
    this.applicationGatewayBackendAddressPools,
    this.applicationSecurityGroups,
    required this.etag,
    this.gatewayLoadBalancer,
    this.id,
    this.loadBalancerBackendAddressPools,
    this.loadBalancerInboundNatRules,
    this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAddressPrefixLength,
    this.privateIPAddressVersion,
    this.privateIPAllocationMethod,
    required this.privateLinkConnectionProperties,
    required this.provisioningState,
    this.publicIPAddress,
    this.subnet,
    this.type,
    this.virtualNetworkTaps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPools': ?applicationGatewayBackendAddressPools == null ? null : pulumi.Input.encodeList<ApplicationGatewayBackendAddressPoolResponse, Map<String, dynamic>>(applicationGatewayBackendAddressPools!, (value) => value.toMap()),
      'applicationSecurityGroups': ?applicationSecurityGroups == null ? null : pulumi.Input.encodeList<ApplicationSecurityGroupResponse, Map<String, dynamic>>(applicationSecurityGroups!, (value) => value.toMap()),
      'etag': etag,
      'gatewayLoadBalancer': ?gatewayLoadBalancer == null ? null : gatewayLoadBalancer!.toMap(),
      'id': ?id,
      'loadBalancerBackendAddressPools': ?loadBalancerBackendAddressPools == null ? null : pulumi.Input.encodeList<BackendAddressPoolResponse, Map<String, dynamic>>(loadBalancerBackendAddressPools!, (value) => value.toMap()),
      'loadBalancerInboundNatRules': ?loadBalancerInboundNatRules == null ? null : pulumi.Input.encodeList<InboundNatRuleResponse, Map<String, dynamic>>(loadBalancerInboundNatRules!, (value) => value.toMap()),
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressPrefixLength': ?privateIPAddressPrefixLength,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'privateLinkConnectionProperties': privateLinkConnectionProperties.toMap(),
      'provisioningState': provisioningState,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'type': ?type,
      'virtualNetworkTaps': ?virtualNetworkTaps == null ? null : pulumi.Input.encodeList<VirtualNetworkTapResponse, Map<String, dynamic>>(virtualNetworkTaps!, (value) => value.toMap()),
    };
  }

  factory NetworkInterfaceIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIPConfigurationResponse(
      applicationGatewayBackendAddressPools: map['applicationGatewayBackendAddressPools'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayBackendAddressPoolResponse>(map['applicationGatewayBackendAddressPools'], (value) => ApplicationGatewayBackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>())),
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : pulumi.Input.decodeList<ApplicationSecurityGroupResponse>(map['applicationSecurityGroups'], (value) => ApplicationSecurityGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      gatewayLoadBalancer: map['gatewayLoadBalancer'] == null ? null : SubResourceResponse.fromMap((map['gatewayLoadBalancer'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : pulumi.Input.decodeList<BackendAddressPoolResponse>(map['loadBalancerBackendAddressPools'], (value) => BackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerInboundNatRules: map['loadBalancerInboundNatRules'] == null ? null : pulumi.Input.decodeList<InboundNatRuleResponse>(map['loadBalancerInboundNatRules'], (value) => InboundNatRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAddressPrefixLength: map['privateIPAddressPrefixLength'] == null ? null : map['privateIPAddressPrefixLength'] as int,
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : map['privateIPAddressVersion'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      privateLinkConnectionProperties: NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse.fromMap((map['privateLinkConnectionProperties'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : PublicIPAddressResponse.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      virtualNetworkTaps: map['virtualNetworkTaps'] == null ? null : pulumi.Input.decodeList<VirtualNetworkTapResponse>(map['virtualNetworkTaps'], (value) => VirtualNetworkTapResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

