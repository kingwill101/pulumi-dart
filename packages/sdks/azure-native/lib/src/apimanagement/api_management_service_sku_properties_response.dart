// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API Management service resource SKU properties.
class ApiManagementServiceSkuPropertiesResponse {
  /// Capacity of the SKU (number of deployed units of the SKU). For Consumption SKU capacity must be specified as 0.
  final pulumi.Input<int> capacity;
  /// Name of the Sku.
  final pulumi.Input<String> name;

  /// Creates a new [ApiManagementServiceSkuPropertiesResponse].
  /// [capacity] Capacity of the SKU (number of deployed units of the SKU). For Consumption SKU capacity must be specified as 0.
  /// [name] Name of the Sku.
  const ApiManagementServiceSkuPropertiesResponse({
    required this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'name': name,
    };
  }

  factory ApiManagementServiceSkuPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiManagementServiceSkuPropertiesResponse(
      capacity: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['capacity'])),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
