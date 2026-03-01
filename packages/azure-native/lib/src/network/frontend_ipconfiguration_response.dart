// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_response.dart';
import 'sub_resource_response.dart';
import 'subnet_response.dart';

/// Frontend IP address of the load balancer.
class FrontendIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// The reference to gateway load balancer frontend IP.
  final SubResourceResponse? gatewayLoadBalancer;
  /// Resource ID.
  final String? id;
  /// An array of references to inbound pools that use this frontend IP.
  final List<SubResourceResponse> inboundNatPools;
  /// An array of references to inbound rules that use this frontend IP.
  final List<SubResourceResponse> inboundNatRules;
  /// An array of references to load balancing rules that use this frontend IP.
  final List<SubResourceResponse> loadBalancingRules;
  /// The name of the resource that is unique within the set of frontend IP configurations used by the load balancer. This name can be used to access the resource.
  final String? name;
  /// An array of references to outbound rules that use this frontend IP.
  final List<SubResourceResponse> outboundRules;
  /// The private IP address of the IP configuration.
  final String? privateIPAddress;
  /// Whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.
  final String? privateIPAddressVersion;
  /// The Private IP allocation method.
  final String? privateIPAllocationMethod;
  /// The provisioning state of the frontend IP configuration resource.
  final String provisioningState;
  /// The reference to the Public IP resource.
  final PublicIPAddressResponse? publicIPAddress;
  /// The reference to the Public IP Prefix resource.
  final SubResourceResponse? publicIPPrefix;
  /// The reference to the subnet resource.
  final SubnetResponse? subnet;
  /// Type of the resource.
  final String type;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [FrontendIPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [gatewayLoadBalancer] The reference to gateway load balancer frontend IP.
  /// [id] Resource ID.
  /// [inboundNatPools] An array of references to inbound pools that use this frontend IP.
  /// [inboundNatRules] An array of references to inbound rules that use this frontend IP.
  /// [loadBalancingRules] An array of references to load balancing rules that use this frontend IP.
  /// [name] The name of the resource that is unique within the set of frontend IP configurations used by the load balancer. This name can be used to access the resource.
  /// [outboundRules] An array of references to outbound rules that use this frontend IP.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAddressVersion] Whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.
  /// [privateIPAllocationMethod] The Private IP allocation method.
  /// [provisioningState] The provisioning state of the frontend IP configuration resource.
  /// [publicIPAddress] The reference to the Public IP resource.
  /// [publicIPPrefix] The reference to the Public IP Prefix resource.
  /// [subnet] The reference to the subnet resource.
  /// [type] Type of the resource.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  FrontendIPConfigurationResponse({
    required this.etag,
    this.gatewayLoadBalancer,
    this.id,
    required this.inboundNatPools,
    required this.inboundNatRules,
    required this.loadBalancingRules,
    this.name,
    required this.outboundRules,
    this.privateIPAddress,
    this.privateIPAddressVersion,
    this.privateIPAllocationMethod,
    required this.provisioningState,
    this.publicIPAddress,
    this.publicIPPrefix,
    this.subnet,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'gatewayLoadBalancer': ?gatewayLoadBalancer == null ? null : gatewayLoadBalancer!.toMap(),
      'id': ?id,
      'inboundNatPools': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(inboundNatPools, (value) => value.toMap()),
      'inboundNatRules': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(inboundNatRules, (value) => value.toMap()),
      'loadBalancingRules': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(loadBalancingRules, (value) => value.toMap()),
      'name': ?name,
      'outboundRules': pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(outboundRules, (value) => value.toMap()),
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'publicIPPrefix': ?publicIPPrefix == null ? null : publicIPPrefix!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'type': type,
      'zones': ?zones,
    };
  }

  factory FrontendIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfigurationResponse(
      etag: map['etag'] as String,
      gatewayLoadBalancer: map['gatewayLoadBalancer'] == null ? null : SubResourceResponse.fromMap((map['gatewayLoadBalancer'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      inboundNatPools: pulumi.Input.decodeList<SubResourceResponse>(map['inboundNatPools'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      inboundNatRules: pulumi.Input.decodeList<SubResourceResponse>(map['inboundNatRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancingRules: pulumi.Input.decodeList<SubResourceResponse>(map['loadBalancingRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      outboundRules: pulumi.Input.decodeList<SubResourceResponse>(map['outboundRules'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : map['privateIPAddressVersion'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      provisioningState: map['provisioningState'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : PublicIPAddressResponse.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      publicIPPrefix: map['publicIPPrefix'] == null ? null : SubResourceResponse.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

