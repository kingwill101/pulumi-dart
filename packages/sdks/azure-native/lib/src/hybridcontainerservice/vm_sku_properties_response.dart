// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vm_sku_capabilities_response.dart';

/// The profile for supported VM SKUs
class VmSkuPropertiesResponse {
  /// The list of name-value pairs to describe VM SKU capabilities like MemoryGB, vCPUs, etc.
  final pulumi.Input<List<VmSkuCapabilitiesResponse>> capabilities;

  /// The name of the VM SKU
  final pulumi.Input<String> name;

  /// The type of resource the SKU applies to.
  final pulumi.Input<String> resourceType;

  /// The size of the VM SKU
  final pulumi.Input<String> size;

  /// The tier of the VM SKU
  final pulumi.Input<String> tier;

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
      'capabilities':
          pulumi.Input.mapInputValue<
            List<VmSkuCapabilitiesResponse>,
            List<Map<String, dynamic>>
          >(
            capabilities,
            (value) =>
                pulumi.Input.encodeList<
                  VmSkuCapabilitiesResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'resourceType': resourceType,
      'size': size,
      'tier': tier,
    };
  }

  factory VmSkuPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VmSkuPropertiesResponse(
      capabilities: pulumi.Input.fromValue(
        pulumi.Input.decodeList<VmSkuCapabilitiesResponse>(
          map['capabilities']!,
          (value) => VmSkuCapabilitiesResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      size: pulumi.Input.fromValue(map['size'] as String),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}
