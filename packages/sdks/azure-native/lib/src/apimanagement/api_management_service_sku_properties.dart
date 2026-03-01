// ignore_for_file: unused_element, unnecessary_cast


/// API Management service resource SKU properties.
class ApiManagementServiceSkuProperties {
  /// Capacity of the SKU (number of deployed units of the SKU). For Consumption SKU capacity must be specified as 0.
  final int capacity;
  /// Name of the Sku.
  final String name;

  /// Creates a new [ApiManagementServiceSkuProperties].
  /// [capacity] Capacity of the SKU (number of deployed units of the SKU). For Consumption SKU capacity must be specified as 0.
  /// [name] Name of the Sku.
  ApiManagementServiceSkuProperties({
    required this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': name,
    };
  }

  factory ApiManagementServiceSkuProperties.fromMap(Map<String, dynamic> map) {
    return ApiManagementServiceSkuProperties(
      capacity: map['capacity'] as int,
      name: map['name'] as String,
    );
  }
}

