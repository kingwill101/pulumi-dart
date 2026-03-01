// ignore_for_file: unused_element, unnecessary_cast


/// Describes the VM SKU capabilities like MemoryGB, vCPUs, etc.
class VmSkuCapabilitiesResponse {
  /// Name of the VM SKU capability
  final String name;
  /// Value of the VM SKU capability
  final String value;

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
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

