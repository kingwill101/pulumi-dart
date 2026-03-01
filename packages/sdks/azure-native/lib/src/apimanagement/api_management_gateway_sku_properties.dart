// ignore_for_file: unused_element, unnecessary_cast


/// API Management gateway resource SKU properties.
class ApiManagementGatewaySkuProperties {
  /// Capacity of the SKU (number of deployed units of the SKU)
  final int? capacity;
  /// Name of the Sku.
  final String name;

  /// Creates a new [ApiManagementGatewaySkuProperties].
  /// [capacity] Capacity of the SKU (number of deployed units of the SKU)
  /// [name] Name of the Sku.
  ApiManagementGatewaySkuProperties({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory ApiManagementGatewaySkuProperties.fromMap(Map<String, dynamic> map) {
    return ApiManagementGatewaySkuProperties(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
    );
  }
}

