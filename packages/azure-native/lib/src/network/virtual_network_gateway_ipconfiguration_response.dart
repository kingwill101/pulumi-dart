// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// IP configuration for virtual network gateway.
class VirtualNetworkGatewayIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Private IP Address for this gateway.
  final String privateIPAddress;
  /// The private IP address allocation method.
  final String? privateIPAllocationMethod;
  /// The provisioning state of the virtual network gateway IP configuration resource.
  final String provisioningState;
  /// The reference to the public IP resource.
  final SubResourceResponse? publicIPAddress;
  /// The reference to the subnet resource.
  final SubResourceResponse? subnet;

  /// Creates a new [VirtualNetworkGatewayIPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateIPAddress] Private IP Address for this gateway.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [provisioningState] The provisioning state of the virtual network gateway IP configuration resource.
  /// [publicIPAddress] The reference to the public IP resource.
  /// [subnet] The reference to the subnet resource.
  VirtualNetworkGatewayIPConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    required this.privateIPAddress,
    this.privateIPAllocationMethod,
    required this.provisioningState,
    this.publicIPAddress,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'privateIPAddress': privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory VirtualNetworkGatewayIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayIPConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIPAddress: map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      provisioningState: map['provisioningState'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : SubResourceResponse.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

