// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_sku_capabilities_response.dart';

/// The profile for supported VM SKUs
class VmSkuPropertiesResponse {
  /// The list of name-value pairs to describe VM SKU capabilities like MemoryGB, vCPUs, etc.
  final List<VmSkuCapabilitiesResponse> capabilities;
  /// The name of the VM SKU
  final String name;
  /// The type of resource the SKU applies to.
  final String resourceType;
  /// The size of the VM SKU
  final String size;
  /// The tier of the VM SKU
  final String tier;

  /// Creates a new [VmSkuPropertiesResponse].
  /// [capabilities] The list of name-value pairs to describe VM SKU capabilities like MemoryGB, vCPUs, etc.
  /// [name] The name of the VM SKU
  /// [resourceType] The type of resource the SKU applies to.
  /// [size] The size of the VM SKU
  /// [tier] The tier of the VM SKU
  VmSkuPropertiesResponse({
    required this.capabilities,
    required this.name,
    required this.resourceType,
    required this.size,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': pulumi.Input.encodeList<VmSkuCapabilitiesResponse, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'name': name,
      'resourceType': resourceType,
      'size': size,
      'tier': tier,
    };
  }

  factory VmSkuPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VmSkuPropertiesResponse(
      capabilities: pulumi.Input.decodeList<VmSkuCapabilitiesResponse>(map['capabilities'], (value) => VmSkuCapabilitiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      resourceType: map['resourceType'] as String,
      size: map['size'] as String,
      tier: map['tier'] as String,
    );
  }
}

