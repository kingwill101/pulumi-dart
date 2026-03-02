// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the VM SKU capabilities like MemoryGB, vCPUs, etc.
class VmSkuCapabilitiesResponse {
  /// Name of the VM SKU capability
  final pulumi.Input<String> name;
  /// Value of the VM SKU capability
  final pulumi.Input<String> value;

  /// Creates a new [VmSkuCapabilitiesResponse].
  /// [name] Name of the VM SKU capability
  /// [value] Value of the VM SKU capability
  VmSkuCapabilitiesResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory VmSkuCapabilitiesResponse.fromMap(Map<String, dynamic> map) {
    return VmSkuCapabilitiesResponse(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

