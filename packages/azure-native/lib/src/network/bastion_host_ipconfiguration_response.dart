// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// IP configuration of an Bastion Host.
class BastionHostIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Private IP allocation method.
  final String? privateIPAllocationMethod;
  /// The provisioning state of the bastion host IP configuration resource.
  final String provisioningState;
  /// Reference of the PublicIP resource. Null for private only bastion
  final SubResourceResponse? publicIPAddress;
  /// Reference of the subnet resource.
  final SubResourceResponse subnet;
  /// Ip configuration type.
  final String type;

  /// Creates a new [BastionHostIPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateIPAllocationMethod] Private IP allocation method.
  /// [provisioningState] The provisioning state of the bastion host IP configuration resource.
  /// [publicIPAddress] Reference of the PublicIP resource. Null for private only bastion
  /// [subnet] Reference of the subnet resource.
  /// [type] Ip configuration type.
  BastionHostIPConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    this.privateIPAllocationMethod,
    required this.provisioningState,
    this.publicIPAddress,
    required this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': subnet.toMap(),
      'type': type,
    };
  }

  factory BastionHostIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return BastionHostIPConfigurationResponse(
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      provisioningState: map['provisioningState'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : SubResourceResponse.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

