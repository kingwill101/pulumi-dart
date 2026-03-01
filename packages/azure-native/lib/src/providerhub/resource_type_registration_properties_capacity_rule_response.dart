// ignore_for_file: unused_element, unnecessary_cast


/// Capacity rule.
class ResourceTypeRegistrationPropertiesCapacityRuleResponse {
  /// Capacity policy.
  final String? capacityPolicy;
  /// Sku alias
  final String? skuAlias;

  /// Creates a new [ResourceTypeRegistrationPropertiesCapacityRuleResponse].
  /// [capacityPolicy] Capacity policy.
  /// [skuAlias] Sku alias
  ResourceTypeRegistrationPropertiesCapacityRuleResponse({
    this.capacityPolicy,
    this.skuAlias,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityPolicy': ?capacityPolicy,
      'skuAlias': ?skuAlias,
    };
  }

  factory ResourceTypeRegistrationPropertiesCapacityRuleResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesCapacityRuleResponse(
      capacityPolicy: map['capacityPolicy'] == null ? null : map['capacityPolicy'] as String,
      skuAlias: map['skuAlias'] == null ? null : map['skuAlias'] as String,
    );
  }
}

