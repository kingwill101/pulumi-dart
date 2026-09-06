// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// API Management gateway resource SKU properties.
class ApiManagementGatewaySkuPropertiesResponse {
  /// Capacity of the SKU (number of deployed units of the SKU)
  final pulumi.Input<int?>? capacity;
  /// Name of the Sku.
  final pulumi.Input<String> name;

  /// Creates a new [ApiManagementGatewaySkuPropertiesResponse].
  /// [capacity] Capacity of the SKU (number of deployed units of the SKU)
  /// [name] Name of the Sku.
  const ApiManagementGatewaySkuPropertiesResponse({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory ApiManagementGatewaySkuPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiManagementGatewaySkuPropertiesResponse(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
